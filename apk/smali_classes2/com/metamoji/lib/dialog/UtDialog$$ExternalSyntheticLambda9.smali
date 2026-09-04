.class public final synthetic Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/lib/dialog/UtDialog;

.field public final synthetic f$1:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/lib/dialog/UtDialog;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda9;->f$0:Lcom/metamoji/lib/dialog/UtDialog;

    iput-object p2, p0, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda9;->f$1:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda9;->f$0:Lcom/metamoji/lib/dialog/UtDialog;

    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda9;->f$1:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-static {v0, v1}, Lcom/metamoji/lib/dialog/UtDialog;->onBodyViewSizeChanged$lambda$10(Lcom/metamoji/lib/dialog/UtDialog;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    return-void
.end method
