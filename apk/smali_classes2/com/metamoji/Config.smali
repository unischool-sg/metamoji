.class public Lcom/metamoji/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static MMJ_LOGIN_PARAM_APP_NAME_CLASSROOM:Ljava/lang/String; = "CLASSROOM"

.field public static MMJ_LOGIN_PARAM_APP_VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSupportEmailAddress()Ljava/lang/String;
    .locals 1

    .line 27
    const-string v0, "support.biz.jp@metamoji.jp"

    return-object v0
.end method

.method public static isCrashLogServerEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isKeepSyncCancelEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isLibraryDm3Enabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isShareOpenEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
