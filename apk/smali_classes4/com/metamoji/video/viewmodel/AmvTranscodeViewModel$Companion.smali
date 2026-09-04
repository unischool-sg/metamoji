.class public final Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Companion;
.super Ljava/lang/Object;
.source "AmvTranscodeViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J>\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u001a\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0013\u0012\u0004\u0012\u00020\u000f0\u0011J>\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u001a\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0013\u0012\u0004\u0012\u00020\u000f0\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Companion;",
        "",
        "<init>",
        "()V",
        "logger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "getLogger",
        "()Lcom/metamoji/lib/utils/UtLog;",
        "registerTo",
        "Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "onProgress",
        "Lkotlin/Function1;",
        "",
        "",
        "onCompleted",
        "Lkotlin/Function2;",
        "",
        "Lcom/metamoji/video/AmvError;",
        "view",
        "Landroid/view/View;",
        "video"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Companion;-><init>()V

    return-void
.end method

.method static final registerTo$lambda$2$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Float;)Lkotlin/Unit;
    .locals 0

    if-eqz p1, :cond_0

    .line 132
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final registerTo$lambda$2$lambda$1(Lkotlin/jvm/functions/Function2;Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;)Lkotlin/Unit;
    .locals 1

    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p1}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;->getCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p1}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;->getResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;->getError()Lcom/metamoji/video/AmvError;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 125
    invoke-static {}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    return-object v0
.end method

.method public final registerTo(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lcom/metamoji/video/AmvError;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onProgress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCompleted"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-static {p1}, Lcom/metamoji/video/AmvUtilsKt;->getActivity(Landroid/view/View;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Companion;->registerTo(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 153
    const-string p2, "no activity"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final registerTo(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lcom/metamoji/video/AmvError;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onProgress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCompleted"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    move-object v1, p1

    check-cast v1, Landroidx/lifecycle/ViewModelStoreOwner;

    new-instance v2, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v2}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    check-cast v2, Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;

    .line 130
    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->getProgress()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Companion$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p2, v2}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p2, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 135
    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    new-instance v1, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Companion$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function2;)V

    new-instance p3, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p3, v1}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p3, Landroidx/lifecycle/Observer;

    invoke-virtual {p2, p1, p3}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-object v0
.end method
