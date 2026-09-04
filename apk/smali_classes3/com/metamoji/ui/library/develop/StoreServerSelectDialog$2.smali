.class Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$2;
.super Ljava/lang/Object;
.source "StoreServerSelectDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$2;->this$0:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 158
    iget-object p1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$2;->this$0:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;

    invoke-static {p1}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->-$$Nest$mselectAnyUrl(Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;)V

    :cond_0
    return-void
.end method
