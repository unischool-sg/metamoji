.class public final synthetic Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/lib/dialog/UtDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/lib/dialog/UtDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/lib/dialog/UtDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/dialog/UtDialog;->onRightButtonTapped(Landroid/view/View;)V

    return-void
.end method
