.class public final synthetic Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;


# direct methods
.method public synthetic constructor <init>(Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher$$ExternalSyntheticLambda0;->f$0:Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher$$ExternalSyntheticLambda0;->f$0:Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;

    check-cast p1, Landroid/app/Activity;

    invoke-static {v0, p1}, Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;->register$lambda$0(Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;Landroid/app/Activity;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
