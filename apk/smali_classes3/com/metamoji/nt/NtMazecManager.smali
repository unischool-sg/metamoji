.class public Lcom/metamoji/nt/NtMazecManager;
.super Ljava/lang/Object;
.source "NtMazecManager.java"


# static fields
.field private static s_sharedInstance:Lcom/metamoji/nt/NtMazecManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/metamoji/nt/NtMazecManager;
    .locals 1

    .line 17
    sget-object v0, Lcom/metamoji/nt/NtMazecManager;->s_sharedInstance:Lcom/metamoji/nt/NtMazecManager;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/metamoji/nt/NtMazecManager;

    invoke-direct {v0}, Lcom/metamoji/nt/NtMazecManager;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtMazecManager;->s_sharedInstance:Lcom/metamoji/nt/NtMazecManager;

    .line 21
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtMazecManager;->s_sharedInstance:Lcom/metamoji/nt/NtMazecManager;

    return-object v0
.end method


# virtual methods
.method public backupUserData()Ljava/io/File;
    .locals 1

    .line 111
    :try_start_0
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/metamoji/nt/NtMazecImsManager;->getUserDataStore()Lcom/metamoji/nt/NtMazecImsManager$IUserDataStore;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Lcom/metamoji/nt/NtMazecImsManager$IUserDataStore;->backup()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public clearUserData()V
    .locals 1

    .line 103
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/metamoji/nt/NtMazecImsManager;->getUserDataStore()Lcom/metamoji/nt/NtMazecImsManager$IUserDataStore;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Lcom/metamoji/nt/NtMazecImsManager$IUserDataStore;->clear()V

    return-void
.end method

.method public reloadSettings()V
    .locals 2

    .line 30
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 31
    const-string v1, "InputViewWorkSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getMapValue(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 37
    :goto_0
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/metamoji/nt/NtMazecImsManager;->getUserSettings()Lcom/metamoji/nt/NtMazecImsManager$IUserSettings;

    move-result-object v0

    if-nez v1, :cond_1

    .line 44
    invoke-interface {v0}, Lcom/metamoji/nt/NtMazecImsManager$IUserSettings;->getDefault()Ljava/util/Map;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :cond_1
    const/4 v0, 0x1

    .line 64
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/nt/NtMazecManager;->updateWorkSettings(Ljava/util/Map;Z)V

    return-void
.end method

.method public restoreUserData(Ljava/io/File;)V
    .locals 1

    .line 124
    :try_start_0
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/metamoji/nt/NtMazecImsManager;->getUserDataStore()Lcom/metamoji/nt/NtMazecImsManager$IUserDataStore;

    move-result-object v0

    .line 127
    invoke-interface {v0, p1}, Lcom/metamoji/nt/NtMazecImsManager$IUserDataStore;->restore(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public saveWorkSettings(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 98
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    .line 99
    const-string v1, "InputViewWorkSettings"

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public updateWorkSettings(Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 73
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/metamoji/nt/NtMazecImsManager;->getUserSettings()Lcom/metamoji/nt/NtMazecImsManager$IUserSettings;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/metamoji/nt/NtMazecImsManager$IUserSettings;->get()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 77
    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 79
    invoke-interface {v0, v1}, Lcom/metamoji/nt/NtMazecImsManager$IUserSettings;->set(Ljava/util/Map;)V

    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtMazecManager;->saveWorkSettings(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
