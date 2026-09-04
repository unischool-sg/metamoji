.class public final synthetic Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher$register$invoker$1;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher$register$invoker$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher$$ExternalSyntheticLambda1;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher$$ExternalSyntheticLambda1;->f$1:Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher$register$invoker$1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher$$ExternalSyntheticLambda1;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher$$ExternalSyntheticLambda1;->f$1:Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher$register$invoker$1;

    invoke-static {v0, v1}, Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;->register$lambda$1(Landroid/app/Activity;Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher$register$invoker$1;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
