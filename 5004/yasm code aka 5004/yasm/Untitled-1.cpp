#include <iostream>
#include <string>
#include <random>

using namespace std;

void game() {
    string q1 = "The Great Barrier Reef is the largest living structure on Earth, stretching over 1,400 miles long.";
    string q2 = "The Anglo-Zanzibar War in 1896 between Britain and Zanzibar only lasted 38 minutes.";
    string q3 = "A group of flamingos is called a flamboyance.";
    string q4 = "The unicorn is the national animal of Scotland.";
    string q5 = "The oldest piece of chewing gum was discovered in Finland and is believed to be over 9,000 years old.";
    string q6 = "The shortest verse in the Bible is Jesus wept, found in John 11:35.";
    string q7 = "In Switzerland, it is illegal to own just one guinea pig because they are social animals and need companionship.";
    string q8 = "A cockroach can live for several weeks without its head because it breathes through tiny holes on its body segments.";
    string q9 = "The world's largest snowflake was recorded in Montana in 1887.";
    string q10 = "The national animal of Canada is the beaver, known for its industriousness and building skills.";
    string questions[10] = {q1, q2, q3, q4, q5, q6, q7, q8, q9, q10};

    int player_health_1 = 3;
    int player_health_2 = 3;
    string player_name_1;
    string player_name_2;

    cout << "Enter the name of the first player: ";
    cin >> player_name_1;
    cout << "Enter the name of the second player: ";
    cin >> player_name_2;

    for (int i = 0; i < 10; i++) {
        cout << questions[i] << endl;
        string answer;
        cout << "Enter True or False: ";
        cin >> answer;
        bool result;
        if (answer == "true") {
            result = true;
        } else {
            result = false;
        }
        if (result == (bool)(rand() % 2)) {
            cout << "Correct answer!" << endl;
        } else {
            cout << "Wrong answer!" << endl;
            if (rand() % 2) {
                player_health_1--;
                cout << player_name_1 << " loses 1 health point!" << endl;
            } else {
                player_health_2--;
                cout << player_name_2 << " loses 1 health point!" << endl;
            }
            if (player_health_1 == 0) {
                cout << player_name_2 << " wins!" << endl;
                break;
            } else if (player_health_2 == 0) {
                cout << player_name_1 << " wins!" << endl;
                break;
            }
        }
        cout << player_name_1 << ": " << player_health_1 << " health points" << endl;
        cout << player_name_2 << ": " << player_health_2 << " health points" << endl;
    }
}

int main() {
    game();
    return 0;
}
