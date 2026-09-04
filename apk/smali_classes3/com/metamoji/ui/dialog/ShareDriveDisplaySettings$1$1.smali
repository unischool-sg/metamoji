.class Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1$1;
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


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;Lcom/metamoji/dvm/fw/bean/DvmDriveBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1$1;->this$1:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1$1;->val$driveBean:Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 186
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1$1;->this$1:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;->this$0:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->-$$Nest$fget_driveToCheck(Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1$1;->val$driveBean:Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1$1;->this$1:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;->this$0:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->-$$Nest$fget_driveToCheck(Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1$1;->val$driveBean:Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
