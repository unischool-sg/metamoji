.class public abstract Lcom/metamoji/ui/UiCameraBroker;
.super Lcom/metamoji/lib/dialog/broker/UtActivityBroker;
.source "UiCameraBroker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/UiCameraBroker$CameraContract;,
        Lcom/metamoji/ui/UiCameraBroker$Companion;,
        Lcom/metamoji/ui/UiCameraBroker$ImageCameraContract;,
        Lcom/metamoji/ui/UiCameraBroker$MediaFile;,
        Lcom/metamoji/ui/UiCameraBroker$VideoCameraContract;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/lib/dialog/broker/UtActivityBroker<",
        "Ljava/lang/String;",
        "Lcom/metamoji/ui/UiCameraBroker$MediaFile;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUiCameraBroker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UiCameraBroker.kt\ncom/metamoji/ui/UiCameraBroker\n+ 2 UtLib.kt\ncom/metamoji/lib/utils/UtLibKt\n*L\n1#1,225:1\n74#2,4:226\n*S KotlinDebug\n*F\n+ 1 UiCameraBroker.kt\ncom/metamoji/ui/UiCameraBroker\n*L\n192#1:226,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\u0008&\u0018\u0000 \u001a2\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001:\u0005\u001a\u001b\u001c\u001d\u001eB\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0002H\u0086@\u00a2\u0006\u0002\u0010\u0012JU\u0010\u0010\u001a\u00020\u0013\"\n\u0008\u0000\u0010\u0014\u0018\u0001*\u00020\u00052\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00022*\u0008\u0004\u0010\u0015\u001a$\u0008\u0001\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0016H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR$\u0010\u000c\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/metamoji/ui/UiCameraBroker;",
        "Lcom/metamoji/lib/dialog/broker/UtActivityBroker;",
        "",
        "Lcom/metamoji/ui/UiCameraBroker$MediaFile;",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "forVideo",
        "",
        "<init>",
        "(Landroidx/fragment/app/FragmentActivity;Z)V",
        "getForVideo",
        "()Z",
        "contract",
        "Landroidx/activity/result/contract/ActivityResultContract;",
        "getContract",
        "()Landroidx/activity/result/contract/ActivityResultContract;",
        "take",
        "outputFileName",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "T",
        "fn",
        "Lkotlin/Function3;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V",
        "Companion",
        "MediaFile",
        "CameraContract",
        "VideoCameraContract",
        "ImageCameraContract",
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
.field public static final Companion:Lcom/metamoji/ui/UiCameraBroker$Companion;

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private final forVideo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/metamoji/ui/UiCameraBroker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/UiCameraBroker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/UiCameraBroker;->Companion:Lcom/metamoji/ui/UiCameraBroker$Companion;

    .line 35
    new-instance v2, Lcom/metamoji/lib/utils/UtLog;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const-string v3, "Camera"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/metamoji/ui/UiCameraBroker;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Z)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/broker/UtActivityBroker;-><init>()V

    iput-boolean p2, p0, Lcom/metamoji/ui/UiCameraBroker;->forVideo:Z

    .line 43
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiCameraBroker;->register(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 33
    sget-object v0, Lcom/metamoji/ui/UiCameraBroker;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public static synthetic take$default(Lcom/metamoji/ui/UiCameraBroker;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 173
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/UiCameraBroker;->take(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: take"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic take$default(Lcom/metamoji/ui/UiCameraBroker;Ljava/lang/String;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V
    .locals 6

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    move-object p1, p4

    .line 209
    :cond_0
    const-string p3, "fn"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    sget-object p3, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {p3}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getImmortalTaskScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance p3, Lcom/metamoji/ui/UiCameraBroker$take$4;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/metamoji/ui/UiCameraBroker$take$4;-><init>(Lcom/metamoji/ui/UiCameraBroker;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    move-object v3, p3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 209
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: take"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static final take$lambda$0()Ljava/lang/String;
    .locals 2

    .line 190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getContract()Landroidx/activity/result/contract/ActivityResultContract;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "Ljava/lang/String;",
            "Lcom/metamoji/ui/UiCameraBroker$MediaFile;",
            ">;"
        }
    .end annotation

    .line 165
    iget-boolean v0, p0, Lcom/metamoji/ui/UiCameraBroker;->forVideo:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/metamoji/ui/UiCameraBroker$VideoCameraContract;

    invoke-direct {v0}, Lcom/metamoji/ui/UiCameraBroker$VideoCameraContract;-><init>()V

    :goto_0
    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    return-object v0

    :cond_0
    new-instance v0, Lcom/metamoji/ui/UiCameraBroker$ImageCameraContract;

    invoke-direct {v0}, Lcom/metamoji/ui/UiCameraBroker$ImageCameraContract;-><init>()V

    goto :goto_0
.end method

.method public final getForVideo()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/metamoji/ui/UiCameraBroker;->forVideo:Z

    return v0
.end method

.method public final take(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/ui/UiCameraBroker$MediaFile;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/metamoji/ui/UiCameraBroker$take$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/metamoji/ui/UiCameraBroker$take$1;

    iget v3, v2, Lcom/metamoji/ui/UiCameraBroker$take$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lcom/metamoji/ui/UiCameraBroker$take$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lcom/metamoji/ui/UiCameraBroker$take$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/metamoji/ui/UiCameraBroker$take$1;

    invoke-direct {v2, v1, v0}, Lcom/metamoji/ui/UiCameraBroker$take$1;-><init>(Lcom/metamoji/ui/UiCameraBroker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/metamoji/ui/UiCameraBroker$take$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 173
    iget v4, v2, Lcom/metamoji/ui/UiCameraBroker$take$1;->label:I

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v6, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v3, v2, Lcom/metamoji/ui/UiCameraBroker$take$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/metamoji/ui/IPermissionBrokerSource;

    iget-object v2, v2, Lcom/metamoji/ui/UiCameraBroker$take$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v2, Lcom/metamoji/ui/UiCameraBroker$take$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/metamoji/ui/IPermissionBrokerSource;

    iget-object v6, v2, Lcom/metamoji/ui/UiCameraBroker$take$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    :cond_3
    iget-object v4, v2, Lcom/metamoji/ui/UiCameraBroker$take$1;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 186
    :try_start_3
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getMortalInstanceSource()Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    move-result-object v0

    move-object/from16 v4, p1

    iput-object v4, v2, Lcom/metamoji/ui/UiCameraBroker$take$1;->L$0:Ljava/lang/Object;

    iput v6, v2, Lcom/metamoji/ui/UiCameraBroker$take$1;->label:I

    invoke-interface {v0, v2}, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;->getOwner(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_5

    goto/16 :goto_5

    :cond_5
    :goto_1
    check-cast v0, Lcom/metamoji/lib/dialog/UtDialogOwner;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialogOwner;->asActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v9, v0, Lcom/metamoji/ui/IPermissionBrokerSource;

    if-eqz v9, :cond_6

    check-cast v0, Lcom/metamoji/ui/IPermissionBrokerSource;

    goto :goto_2

    :cond_6
    move-object v0, v8

    :goto_2
    if-eqz v0, :cond_b

    .line 187
    new-instance v9, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;

    invoke-interface {v0}, Lcom/metamoji/ui/IPermissionBrokerSource;->getMultiPermissionsBroker()Lcom/metamoji/ui/UiMultiPermissionsBroker;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;-><init>(Lcom/metamoji/ui/UiMultiPermissionsBroker;)V

    .line 188
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1d

    const/4 v15, 0x0

    if-ge v10, v11, :cond_7

    move v10, v6

    goto :goto_3

    :cond_7
    move v10, v15

    :goto_3
    const-string v11, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;->addIf$default(Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;ZLjava/lang/String;ZILjava/lang/Object;)Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;

    move-result-object v6

    .line 189
    const-string v9, "android.permission.CAMERA"

    invoke-static {v6, v9, v15, v7, v8}, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;->add$default(Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;Ljava/lang/String;ZILjava/lang/Object;)Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;

    move-result-object v6

    new-instance v9, Lcom/metamoji/ui/UiCameraBroker$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Lcom/metamoji/ui/UiCameraBroker$$ExternalSyntheticLambda0;-><init>()V

    .line 190
    invoke-virtual {v6, v9, v15}, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;->add(Lkotlin/jvm/functions/Function0;Z)Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;

    move-result-object v6

    .line 191
    iput-object v4, v2, Lcom/metamoji/ui/UiCameraBroker$take$1;->L$0:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v2, Lcom/metamoji/ui/UiCameraBroker$take$1;->L$1:Ljava/lang/Object;

    iput v7, v2, Lcom/metamoji/ui/UiCameraBroker$take$1;->label:I

    invoke-virtual {v6, v2}, Lcom/metamoji/ui/UiMultiPermissionsBroker$Request;->execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_8

    goto :goto_5

    :cond_8
    move-object/from16 v16, v4

    move-object v4, v0

    move-object v0, v6

    move-object/from16 v6, v16

    :goto_4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 194
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/metamoji/ui/UiCameraBroker$take$1;->L$0:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/metamoji/ui/UiCameraBroker$take$1;->L$1:Ljava/lang/Object;

    iput v5, v2, Lcom/metamoji/ui/UiCameraBroker$take$1;->label:I

    invoke-virtual {v1, v6, v2}, Lcom/metamoji/ui/UiCameraBroker;->invoke(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_9

    :goto_5
    return-object v3

    :cond_9
    :goto_6
    check-cast v0, Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    return-object v0

    .line 192
    :cond_a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "permission denied."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "IPermissionBrokerSource is required."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 196
    sget-object v2, Lcom/metamoji/ui/UiCameraBroker;->logger:Lcom/metamoji/lib/utils/UtLog;

    invoke-static {v2, v0, v8, v7, v8}, Lcom/metamoji/lib/utils/UtLog;->error$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v8
.end method

.method public final synthetic take(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/fragment/app/FragmentActivity;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-TT;-",
            "Lcom/metamoji/ui/UiCameraBroker$MediaFile;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getImmortalTaskScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/metamoji/ui/UiCameraBroker$take$4;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/metamoji/ui/UiCameraBroker$take$4;-><init>(Lcom/metamoji/ui/UiCameraBroker;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
