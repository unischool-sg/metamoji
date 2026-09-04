.class Lcom/metamoji/noteanytime/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnContextClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity;

.field final synthetic val$_this:Lcom/metamoji/noteanytime/MainActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity;Lcom/metamoji/noteanytime/MainActivity;)V
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

    .line 643
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$7;->this$0:Lcom/metamoji/noteanytime/MainActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$7;->val$_this:Lcom/metamoji/noteanytime/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextClick(Landroid/view/View;)Z
    .locals 0

    .line 646
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$7;->val$_this:Lcom/metamoji/noteanytime/MainActivity;

    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->contextClickSyncBtn(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    return p1
.end method
