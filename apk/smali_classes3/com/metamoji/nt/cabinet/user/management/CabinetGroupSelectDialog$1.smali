.class Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog$1;
.super Ljava/lang/Object;
.source "CabinetGroupSelectDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog$1;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 145
    iget-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog$1;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;

    invoke-virtual {p1}, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->setSerchTimer()V

    return-void
.end method
