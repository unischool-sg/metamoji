.class public final Lcom/metamoji/noteanytime/EntryActivity;
.super Lcom/metamoji/lib/dialog/task/UtMortalActivity;
.source "EntryActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/noteanytime/EntryActivity$Companion;,
        Lcom/metamoji/noteanytime/EntryActivity$RequestUri;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u000f2\u00020\u0001:\u0002\u000e\u000fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J\u0008\u0010\u0008\u001a\u00020\u0005H\u0014J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0014J\u0008\u0010\u000c\u001a\u00020\u0005H\u0014J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/metamoji/noteanytime/EntryActivity;",
        "Lcom/metamoji/lib/dialog/task/UtMortalActivity;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onNewIntent",
        "intent",
        "Landroid/content/Intent;",
        "onPause",
        "resolveContent",
        "RequestUri",
        "Companion",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/metamoji/noteanytime/EntryActivity$Companion;

.field public static final Key_PendingIntent:Ljava/lang/String; = "EntryActivity:pendingIntent"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/noteanytime/EntryActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/noteanytime/EntryActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/noteanytime/EntryActivity;->Companion:Lcom/metamoji/noteanytime/EntryActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;-><init>()V

    return-void
.end method

.method public static final execPendingIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/noteanytime/EntryActivity;->Companion:Lcom/metamoji/noteanytime/EntryActivity$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/noteanytime/EntryActivity$Companion;->execPendingIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public static final handoverPendingIntent(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/noteanytime/EntryActivity;->Companion:Lcom/metamoji/noteanytime/EntryActivity$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/noteanytime/EntryActivity$Companion;->handoverPendingIntent(Landroid/content/Intent;Landroid/content/Intent;)V

    return-void
.end method

.method static final onCreate$lambda$1(Lcom/metamoji/noteanytime/EntryActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 103
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EntryActivity;->finish()V

    return-void
.end method

.method static final onCreate$lambda$2(Lcom/metamoji/noteanytime/EntryActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 166
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EntryActivity;->finish()V

    return-void
.end method

.method static final onCreate$lambda$3(Lcom/metamoji/noteanytime/EntryActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 185
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EntryActivity;->finish()V

    return-void
.end method

.method private final resolveContent(Landroid/content/Intent;)V
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EntryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/noteanytime/cm/IntentContent;->resolveContent(Landroid/content/Intent;Landroid/content/ContentResolver;)V

    return-void
.end method

.method public static final restorePendingIntent(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/noteanytime/EntryActivity;->Companion:Lcom/metamoji/noteanytime/EntryActivity$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/noteanytime/EntryActivity$Companion;->restorePendingIntent(Landroid/os/Bundle;Landroid/content/Intent;)V

    return-void
.end method

.method public static final savePendingIntent(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/noteanytime/EntryActivity;->Companion:Lcom/metamoji/noteanytime/EntryActivity$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/noteanytime/EntryActivity$Companion;->savePendingIntent(Landroid/os/Bundle;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 33
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const-string v0, "EntryActivity: onCreate"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 41
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/metamoji/lc/LicenseChecker;->isLicenseCacheValid(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    const-string p1, "EntryActivity: invalid license."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EntryActivity;->finish()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 49
    const-string p1, "EntryActivity: never restored."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EntryActivity;->finish()V

    return-void

    .line 58
    :cond_1
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/metamoji/nt/NtSystemSettings;->initialize(Landroid/content/Context;)V

    .line 61
    sget-object v1, Lcom/metamoji/ui/cabinet/user/LoginPageActivity;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;->isAlreadyLoggedIn()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 62
    const-string p1, "EntryActivity: switch to LoginPageActicity."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 66
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/EntryActivity;->resolveContent(Landroid/content/Intent;)V

    .line 68
    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageActivity;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, p1}, Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;->startLoginActivity(Landroid/app/Activity;ZLandroid/content/Intent;)V

    .line 69
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EntryActivity;->finish()V

    return-void

    .line 74
    :cond_2
    invoke-static {}, Lcom/metamoji/nt/NtStartup;->isNeedToStartup()Z

    move-result v1

    const/high16 v3, 0x14000000

    if-eqz v1, :cond_4

    .line 77
    const-string p1, "EntryActivity ... to be initialized. (ignore request)"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/metamoji/nt/NtStartup;->getInstance()Lcom/metamoji/nt/NtStartup;

    move-result-object p1

    if-nez p1, :cond_3

    .line 79
    const-string p1, "EntryActivity: switch to StartupActivity."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 80
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/metamoji/noteanytime/StartupActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, p1}, Lcom/metamoji/noteanytime/EntryActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EntryActivity;->finish()V

    return-void

    .line 88
    :cond_4
    invoke-static {v0}, Lcom/metamoji/nt/NtStartup;->initialize(Landroidx/fragment/app/FragmentActivity;)V

    .line 89
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 90
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 92
    invoke-static {v1}, Lcom/metamoji/noteanytime/cm/IntentContent;->getMimeType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-static {}, Lcom/metamoji/nt/NtUrlScheme;->getUrlScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 94
    sget-object p1, Lcom/metamoji/noteanytime/EntryActivity$RequestUri;->Companion:Lcom/metamoji/noteanytime/EntryActivity$RequestUri$Companion;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/noteanytime/EntryActivity$RequestUri$Companion;->create(Landroid/app/Activity;Landroid/content/Intent;)Lcom/metamoji/cm/SharedReference;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/metamoji/cm/SharedReference;

    .line 95
    new-instance v1, Lcom/metamoji/nt/NtShortcut;

    invoke-direct {v1}, Lcom/metamoji/nt/NtShortcut;-><init>()V

    .line 96
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtShortcut;->handleRequest(Lcom/metamoji/cm/SharedReference;)V

    .line 97
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-static {p1, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 99
    :cond_5
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 101
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 102
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CANT_IMPORT:I

    sget v0, Lcom/metamoji/noteanytime/R$string;->app_name:I

    new-instance v1, Lcom/metamoji/noteanytime/EntryActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/EntryActivity$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/noteanytime/EntryActivity;)V

    invoke-static {p1, v0, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 105
    :cond_6
    const-string v4, "application/vnd.metamoji.atdoc"

    invoke-static {v4, v3, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    const-string v6, "application/pdf"

    const-string v7, "closeDocument"

    if-nez v4, :cond_12

    .line 106
    const-string v4, "application/octet-stream"

    invoke-static {v4, v3, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_12

    .line 107
    invoke-static {v6, v3, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_12

    .line 108
    const-string v4, "application/atdoc"

    invoke-static {v4, v3, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_12

    .line 109
    const-string v4, "application/vnd.metamoji.btshare"

    invoke-static {v4, v3, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_12

    .line 110
    const-string v4, "application/btshare"

    invoke-static {v4, v3, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_12

    .line 111
    invoke-static {v3}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isUnknownMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_3

    .line 122
    :cond_7
    invoke-static {v3}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isImage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 124
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 125
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v5

    :cond_8
    if-eqz v5, :cond_9

    .line 127
    const-string v0, "EntryActivity: accepts images as ImageUnit ... switch to EditorActivity"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 128
    const-class v0, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 131
    :cond_9
    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    const-string v0, "EntryActivity: accepts images as BackgroundUnit ... switch to ImportActivity (for School)"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 133
    const-class v0, Lcom/metamoji/ui/ImportActivity;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 135
    :goto_0
    invoke-direct {p0, v1}, Lcom/metamoji/noteanytime/EntryActivity;->resolveContent(Landroid/content/Intent;)V

    .line 136
    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/EntryActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 144
    :cond_a
    invoke-static {v3}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isAudio(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 145
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 146
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v5

    :cond_b
    if-eqz v5, :cond_c

    .line 148
    const-string v0, "EntryActivity: accepts audios as SoundUnit ... switch to EditorActivity"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 149
    const-class v0, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 152
    :cond_c
    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    const-string v0, "EntryActivity: accepts audios as VoiceRecorder ... switch to ImportActivity"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 154
    const-class v0, Lcom/metamoji/ui/ImportActivity;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 156
    :goto_1
    invoke-direct {p0, v1}, Lcom/metamoji/noteanytime/EntryActivity;->resolveContent(Landroid/content/Intent;)V

    .line 157
    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/EntryActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 158
    :cond_d
    const-string/jumbo v4, "text/plain"

    invoke-static {v4, v3, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 159
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 162
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_e

    goto :goto_2

    .line 169
    :cond_e
    const-class v0, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 170
    const-string p1, "EntryActivity: accepts text ... switch to EditorActivity"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, v1}, Lcom/metamoji/noteanytime/EntryActivity;->resolveContent(Landroid/content/Intent;)V

    .line 172
    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/EntryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 163
    :cond_f
    :goto_2
    const-string p1, "EntryActivity: reject text file."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 165
    sget p1, Lcom/metamoji/noteanytime/R$string;->Msg_Error_ImportInvalidFileType_Message:I

    sget v0, Lcom/metamoji/noteanytime/R$string;->app_name:I

    new-instance v1, Lcom/metamoji/noteanytime/EntryActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/EntryActivity$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/noteanytime/EntryActivity;)V

    invoke-static {p1, v0, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 173
    :cond_10
    const-string v4, "application/vnd.metamoji.atdoc.page"

    invoke-static {v4, v3, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 175
    const-class v0, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 176
    const-string p1, "EntryActivity: accepts atdoc pages ... switch to EditorActivity"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, v1}, Lcom/metamoji/noteanytime/EntryActivity;->resolveContent(Landroid/content/Intent;)V

    .line 178
    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/EntryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 182
    :cond_11
    const-string p1, "EntryActivity: reject unknown type."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 184
    sget p1, Lcom/metamoji/noteanytime/R$string;->Msg_Error_ImportInvalidFileType_Message:I

    sget v0, Lcom/metamoji/noteanytime/R$string;->app_name:I

    new-instance v1, Lcom/metamoji/noteanytime/EntryActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/EntryActivity$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/noteanytime/EntryActivity;)V

    invoke-static {p1, v0, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 113
    :cond_12
    :goto_3
    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    const-class v0, Lcom/metamoji/ui/ImportActivity;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 116
    invoke-static {v6, v3, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 117
    const-string p1, "insertable"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    :cond_13
    const-string p1, "EntryActivity: accepts docs or pdfs ... switch to ImportActivity"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 120
    invoke-direct {p0, v1}, Lcom/metamoji/noteanytime/EntryActivity;->resolveContent(Landroid/content/Intent;)V

    .line 121
    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/EntryActivity;->startActivity(Landroid/content/Intent;)V

    .line 188
    :goto_4
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EntryActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 194
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onDestroy()V

    .line 195
    const-string v0, "EntryActivity: has been destroyed."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 202
    const-string p1, "EntryActivity: onNewIntent ... ignored."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 206
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onPause()V

    .line 207
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EntryActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/UiDialog;->dismissAllDialogs(Landroidx/fragment/app/FragmentActivity;)V

    .line 210
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiCurrentActivityManager;->unregisterActivity(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method
