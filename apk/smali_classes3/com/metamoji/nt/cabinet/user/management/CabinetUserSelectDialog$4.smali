.class Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$4;
.super Ljava/lang/Object;
.source "CabinetUserSelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 346
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$4;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 349
    iget-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$4;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    invoke-virtual {p1}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->handleSelectAllButtonTap()V

    return-void
.end method
