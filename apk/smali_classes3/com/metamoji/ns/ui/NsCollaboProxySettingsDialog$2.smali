.class Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog$2;
.super Ljava/lang/Object;
.source "NsCollaboProxySettingsDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog$2;->this$0:Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 90
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog$2;->this$0:Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;

    invoke-static {p1}, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->-$$Nest$mupdateCtrlEnable(Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;)V

    return-void
.end method
