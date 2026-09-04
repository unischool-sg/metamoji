.class public final synthetic Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/lib/dialog/UtDialog;

.field public final synthetic f$1:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/lib/dialog/UtDialog;Landroid/view/KeyEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/lib/dialog/UtDialog;

    iput-object p2, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda0;->f$1:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/lib/dialog/UtDialog;

    iget-object v1, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda0;->f$1:Landroid/view/KeyEvent;

    invoke-static {v0, v1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->mortalTaskKeeper_onKeyDown$lambda$1(Lcom/metamoji/lib/dialog/UtDialog;Landroid/view/KeyEvent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
