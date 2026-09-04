.class Lcom/metamoji/ns/ui/NsCollaboModeDialog$3;
.super Ljava/lang/Object;
.source "NsCollaboModeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboModeDialog;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboModeDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog$3;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 179
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolPersonalModeTypeButtonTap(Landroid/view/View;)V

    return-void
.end method
