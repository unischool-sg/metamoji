.class Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1$2;
.super Ljava/lang/Object;
.source "ShareDriveDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;

.field final synthetic val$driveBean:Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

.field final synthetic val$holder:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$ViewHolder;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;Lcom/metamoji/dvm/fw/bean/DvmDriveBean;Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1$2;->this$1:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1$2;->val$driveBean:Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1$2;->val$holder:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 198
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1$2;->this$1:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;->this$0:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->-$$Nest$fget_driveToCheck(Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1$2;->val$driveBean:Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 199
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1$2;->this$1:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;->this$0:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->-$$Nest$fget_driveToCheck(Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1$2;->val$driveBean:Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1$2;->val$holder:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$ViewHolder;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$ViewHolder;->_checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
