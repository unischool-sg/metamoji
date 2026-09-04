.class Lcom/metamoji/ui/cabinet/user/RequiredEula$4;
.super Ljava/lang/Object;
.source "RequiredEula.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/RequiredEula;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/RequiredEula;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/RequiredEula;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula$4;->this$0:Lcom/metamoji/ui/cabinet/user/RequiredEula;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula$4;->this$0:Lcom/metamoji/ui/cabinet/user/RequiredEula;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->_this:Lcom/metamoji/ui/cabinet/user/RequiredEula;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/user/RequiredEula;->onCancel(Landroid/view/View;)V

    return-void
.end method
