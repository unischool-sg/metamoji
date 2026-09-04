.class Lcom/metamoji/mazec/MazecAlertMessageActivity$3;
.super Ljava/lang/Object;
.source "MazecAlertMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/MazecAlertMessageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/MazecAlertMessageActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/MazecAlertMessageActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/metamoji/mazec/MazecAlertMessageActivity$3;->this$0:Lcom/metamoji/mazec/MazecAlertMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .line 69
    iget-object p1, p0, Lcom/metamoji/mazec/MazecAlertMessageActivity$3;->this$0:Lcom/metamoji/mazec/MazecAlertMessageActivity;

    invoke-static {p1}, Lcom/metamoji/mazec/MazecAlertMessageActivity;->-$$Nest$fgetmAlertDialog(Lcom/metamoji/mazec/MazecAlertMessageActivity;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/metamoji/mazec/MazecAlertMessageActivity$3;->this$0:Lcom/metamoji/mazec/MazecAlertMessageActivity;

    invoke-static {v0}, Lcom/metamoji/mazec/MazecAlertMessageActivity;->-$$Nest$fgetmAlertDialog(Lcom/metamoji/mazec/MazecAlertMessageActivity;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/metamoji/mazec/MazecAlertMessageActivity$3;->this$0:Lcom/metamoji/mazec/MazecAlertMessageActivity;

    invoke-static {v1}, Lcom/metamoji/mazec/MazecAlertMessageActivity;->-$$Nest$fgetmAlertDialog(Lcom/metamoji/mazec/MazecAlertMessageActivity;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    :cond_0
    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    :cond_1
    if-eqz v1, :cond_2

    .line 79
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    :cond_2
    return-void
.end method
