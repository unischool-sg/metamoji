.class final Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1$3;
.super Ljava/lang/Object;
.source "LoginDriver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/metamoji/li/driver/LoginError;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $info:Lcom/metamoji/cs/dc/user/CsDCUserInfo;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1$3;->$info:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/metamoji/li/driver/LoginError;
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1$3;->$info:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-boolean v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->hasCRLicense:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MSG_NOT_BELONG_TO_THE_CLASS_OF_THE_CURRENT_YEAR:I

    goto :goto_0

    .line 238
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->ForBiz_Msg_Invalid_License:I

    .line 236
    :goto_0
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    new-instance v1, Lcom/metamoji/li/driver/LoginError;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v0}, Lcom/metamoji/li/driver/LoginError;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1$3;->invoke()Lcom/metamoji/li/driver/LoginError;

    move-result-object v0

    return-object v0
.end method
