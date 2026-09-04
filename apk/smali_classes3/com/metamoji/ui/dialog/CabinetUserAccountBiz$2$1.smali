.class Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2$1;
.super Ljava/lang/Object;
.source "CabinetUserAccountBiz.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2$1;->this$1:Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 144
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_Force_Logout:I

    new-instance v1, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2$1$1;-><init>(Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2$1;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method
