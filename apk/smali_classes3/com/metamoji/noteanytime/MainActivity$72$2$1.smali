.class Lcom/metamoji/noteanytime/MainActivity$72$2$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$72$2;->syncEnd(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/noteanytime/MainActivity$72$2;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$72$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4943
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$72$2$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$72$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 4946
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/LoginPageActivity;->logoutWithClearPasscode(Z)V

    return-void
.end method
