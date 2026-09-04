.class public final synthetic Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroid/view/KeyEvent;

.field public final synthetic f$1:Lcom/metamoji/lib/dialog/UtDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent;Lcom/metamoji/lib/dialog/UtDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda2;->f$0:Landroid/view/KeyEvent;

    iput-object p2, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda2;->f$1:Lcom/metamoji/lib/dialog/UtDialog;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda2;->f$0:Landroid/view/KeyEvent;

    iget-object v1, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda2;->f$1:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-static {v0, v1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->mortalTaskKeeper_onKeyDown$lambda$3(Landroid/view/KeyEvent;Lcom/metamoji/lib/dialog/UtDialog;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
