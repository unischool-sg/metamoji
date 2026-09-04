.class public final synthetic Lcom/metamoji/ui/dialog/SupportLogDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/ui/dialog/SupportLogDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/ui/dialog/SupportLogDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/ui/dialog/SupportLogDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/ui/dialog/SupportLogDialog;

    invoke-static {v0, p1}, Lcom/metamoji/ui/dialog/SupportLogDialog;->createBodyView$lambda$1(Lcom/metamoji/ui/dialog/SupportLogDialog;Landroid/view/View;)V

    return-void
.end method
