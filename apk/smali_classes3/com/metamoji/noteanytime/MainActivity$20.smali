.class Lcom/metamoji/noteanytime/MainActivity$20;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->remakeIfNeeded(Landroidx/fragment/app/FragmentActivity;)V
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

    .line 1075
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$20;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1078
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$20;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->updateUserName(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method
