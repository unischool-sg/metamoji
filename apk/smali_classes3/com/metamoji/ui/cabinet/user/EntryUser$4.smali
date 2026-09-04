.class Lcom/metamoji/ui/cabinet/user/EntryUser$4;
.super Ljava/lang/Object;
.source "EntryUser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/EntryUser;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/EntryUser;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/EntryUser;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/EntryUser$4;->this$0:Lcom/metamoji/ui/cabinet/user/EntryUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser$4;->this$0:Lcom/metamoji/ui/cabinet/user/EntryUser;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/EntryUser;->_this:Lcom/metamoji/ui/cabinet/user/EntryUser;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/user/EntryUser;->onCancel(Landroid/view/View;)V

    return-void
.end method
