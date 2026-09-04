.class Lcom/metamoji/ui/dialog/UiLoginDialog$4;
.super Ljava/lang/Object;
.source "UiLoginDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/UiLoginDialog;->openLoginDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiLoginDialog$4;->val$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/UiLoginDialog$4;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/UiLoginDialog$4;->val$username:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ui/dialog/UiLoginDialog$4;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 247
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiLoginDialog$4;->val$title:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/UiLoginDialog$4;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/UiLoginDialog$4;->val$username:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/UiLoginDialog$4;->val$password:Ljava/lang/String;

    new-instance v4, Lcom/metamoji/ui/dialog/UiLoginDialog$4$1;

    invoke-direct {v4, p0}, Lcom/metamoji/ui/dialog/UiLoginDialog$4$1;-><init>(Lcom/metamoji/ui/dialog/UiLoginDialog$4;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/metamoji/ui/dialog/UiLoginDialog;->-$$Nest$smasyncCheckPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/dialog/UiLoginDialog$ILoginResult;)V

    return-void
.end method
