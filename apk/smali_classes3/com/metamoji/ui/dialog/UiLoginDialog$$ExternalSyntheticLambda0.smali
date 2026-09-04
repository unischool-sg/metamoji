.class public final synthetic Lcom/metamoji/ui/dialog/UiLoginDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/ui/dialog/UiLoginDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/ui/dialog/UiLoginDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiLoginDialog$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/ui/dialog/UiLoginDialog;

    return-void
.end method


# virtual methods
.method public final run(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiLoginDialog$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/ui/dialog/UiLoginDialog;

    invoke-static {v0, p1}, Lcom/metamoji/ui/dialog/UiLoginDialog;->lambda$asyncCheckPassword$0(Lcom/metamoji/ui/dialog/UiLoginDialog;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method
