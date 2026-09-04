.class Lcom/metamoji/noteanytime/MainActivity$50;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/metamoji/ui/MenuEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->syncMenu(Landroidx/fragment/app/FragmentActivity;)V
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

    .line 3272
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$50;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 3275
    check-cast p2, Lcom/metamoji/ui/PopupCommand;

    sget-object p1, Lcom/metamoji/ui/PopupCommand;->SYNC_ALL_DRIVE:Lcom/metamoji/ui/PopupCommand;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3276
    :goto_0
    iget-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$50;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p2, p1}, Lcom/metamoji/noteanytime/MainActivity;->startDCSync(Landroidx/fragment/app/FragmentActivity;Z)Z

    return-void
.end method
