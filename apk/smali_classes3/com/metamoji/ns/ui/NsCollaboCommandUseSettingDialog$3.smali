.class Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$3;
.super Ljava/lang/Object;
.source "NsCollaboCommandUseSettingDialog.java"

# interfaces
.implements Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 278
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$3;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 1

    .line 281
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$3;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->-$$Nest$mtabButtonChanged(Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;Z)V

    return-void
.end method
