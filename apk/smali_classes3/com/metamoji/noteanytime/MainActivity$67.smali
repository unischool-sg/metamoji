.class Lcom/metamoji/noteanytime/MainActivity$67;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->handleLogout(Landroidx/fragment/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4783
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$67;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 4786
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$67;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->Logout(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method
