.class Lcom/metamoji/ex/SendDialog$7;
.super Ljava/lang/Object;
.source "SendDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ex/SendDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ex/SendDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ex/SendDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 900
    iput-object p1, p0, Lcom/metamoji/ex/SendDialog$7;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 902
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog$7;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-static {p1}, Lcom/metamoji/ex/SendDialog;->-$$Nest$fget_shareVoiceFilesText(Lcom/metamoji/ex/SendDialog;)Lcom/metamoji/ui/common/UiTextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiTextView;->setEnabled(Z)V

    .line 903
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog$7;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-static {p1}, Lcom/metamoji/ex/SendDialog;->-$$Nest$fget_shareVoiceFilesSwitch(Lcom/metamoji/ex/SendDialog;)Lcom/metamoji/ui/common/UiSwitch;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiSwitch;->setEnabled(Z)V

    return-void
.end method
