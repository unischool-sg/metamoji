.class public final synthetic Lcom/metamoji/ui/UiWaitScreenBase$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic f$1:Lcom/metamoji/ui/UiWaitScreenBase;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/UiWaitScreenBase;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/UiWaitScreenBase$$ExternalSyntheticLambda1;->f$0:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/metamoji/ui/UiWaitScreenBase$$ExternalSyntheticLambda1;->f$1:Lcom/metamoji/ui/UiWaitScreenBase;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/UiWaitScreenBase$$ExternalSyntheticLambda1;->f$0:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/metamoji/ui/UiWaitScreenBase$$ExternalSyntheticLambda1;->f$1:Lcom/metamoji/ui/UiWaitScreenBase;

    invoke-static {v0, v1}, Lcom/metamoji/ui/UiWaitScreenBase;->close$lambda$2(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/UiWaitScreenBase;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
