trigger NameUpdate on Account (before insert) {
    system.debug('Hello account');

}