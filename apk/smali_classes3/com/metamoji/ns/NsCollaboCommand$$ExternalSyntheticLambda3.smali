.class public final synthetic Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda3;->f$0:Z

    return-void
.end method


# virtual methods
.method public final run(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda3;->f$0:Z

    invoke-static {v0, p1}, Lcom/metamoji/ns/NsCollaboCommand;->lambda$handleCollaboDistribute$1(ZLandroidx/fragment/app/FragmentActivity;)V

    return-void
.end method
