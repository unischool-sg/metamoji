.class public final Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$CabinetUserUpdater;
.super Ljava/lang/Object;
.source "SmallLoginDriver.kt"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CabinetUserUpdater"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0007\u001a\u00020\u0006H\u0086@\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$CabinetUserUpdater;",
        "Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;",
        "<init>",
        "(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;)V",
        "continuation",
        "Lkotlin/coroutines/Continuation;",
        "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;",
        "updateUserInfoCacheAsync",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "callBack",
        "",
        "resultBase",
        "Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;",
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


# instance fields
.field private continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$CabinetUserUpdater;->this$0:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final callBack$lambda$2(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 166
    iget v1, p0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-nez v1, :cond_3

    .line 168
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isAppLicenseValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    iget-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    iget-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyName:Ljava/lang/String;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->inputedRootServer:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->updateOrganizationList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/metamoji/nt/NtClientSettingsStore;->restoreClientSettingsFromServer()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 178
    iget v1, v1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-nez v1, :cond_0

    .line 181
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->updateStateAsync()V

    .line 186
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager;->SharedInstance()Lcom/metamoji/media/MediaUploadManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager;->restoreNeedsUploadDatas()V

    .line 187
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager2;->SharedInstance()Lcom/metamoji/media/MediaUploadManager2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager2;->restoreNeedsUploadDatas()V

    .line 190
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p0

    .line 191
    const-string v0, "forSchoolSimpleLoginMode"

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->access$getMSimpleLoginMode$p(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;)Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 195
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p0

    .line 196
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$CabinetUserUpdater$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$CabinetUserUpdater$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, p1}, Lcom/metamoji/ui/UiCurrentActivityManagerExtKt;->withActivity(Lcom/metamoji/ui/UiCurrentActivityManager;Lkotlin/jvm/functions/Function1;)V

    .line 198
    sget-object p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;->SUCCEEDED:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    iput-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void

    .line 201
    :cond_0
    new-instance p2, Lcom/metamoji/cs/dc/params/CsLogoutParam;

    invoke-direct {p2}, Lcom/metamoji/cs/dc/params/CsLogoutParam;-><init>()V

    .line 202
    check-cast p2, Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;

    invoke-static {p2}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 203
    new-instance p2, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;

    invoke-direct {p2, p0, v0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;-><init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->access$setError(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;)V

    return-void

    .line 208
    :cond_1
    new-instance p0, Lcom/metamoji/cs/dc/params/CsLogoutParam;

    invoke-direct {p0}, Lcom/metamoji/cs/dc/params/CsLogoutParam;-><init>()V

    .line 209
    check-cast p0, Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 210
    new-instance p0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;

    .line 211
    iget-boolean p2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->hasCRLicense:Z

    if-eqz p2, :cond_2

    .line 212
    sget p2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MSG_NOT_BELONG_TO_THE_CLASS_OF_THE_CURRENT_YEAR:I

    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 214
    :cond_2
    sget p2, Lcom/metamoji/noteanytime/R$string;->ForBiz_Msg_Invalid_License:I

    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p2

    .line 210
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;-><init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->access$setError(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;)V

    return-void

    .line 220
    :cond_3
    new-instance p2, Lcom/metamoji/cs/dc/params/CsLogoutParam;

    invoke-direct {p2}, Lcom/metamoji/cs/dc/params/CsLogoutParam;-><init>()V

    .line 221
    check-cast p2, Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;

    invoke-static {p2}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 222
    new-instance p2, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;

    invoke-direct {p2, p0, v0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;-><init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->access$setError(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;)V

    return-void
.end method

.method static final callBack$lambda$2$lambda$1(Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;
    .locals 1

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->requestRemake(Landroidx/fragment/app/FragmentActivity;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 4

    .line 161
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;->FAILED:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 164
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    .line 165
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$CabinetUserUpdater;->this$0:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    new-instance v3, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$CabinetUserUpdater$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v2, v0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$CabinetUserUpdater$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 225
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$CabinetUserUpdater;->continuation:Lkotlin/coroutines/Continuation;

    if-nez p1, :cond_0

    const-string p1, "continuation"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateUserInfoCacheAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 148
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 149
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$CabinetUserUpdater;->continuation:Lkotlin/coroutines/Continuation;

    .line 150
    invoke-static {}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->getInstance()Lcom/metamoji/nt/cabinet/user/CabinetUserManager;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    .line 151
    sget-object v3, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithoutLoginDialog:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    .line 150
    invoke-virtual {v2, v1, v3}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->UpdateUserInfoCacheAsync(Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;)V

    goto :goto_0

    .line 152
    :cond_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v2, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;->FAILED:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 148
    :goto_0
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    return-object v0
.end method
