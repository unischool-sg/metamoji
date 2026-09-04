.class public Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;
.super Ljava/lang/Object;
.source "UiCurrentActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/UiCurrentActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivityInfo"
.end annotation


# instance fields
.field private mNew:Landroidx/fragment/app/FragmentActivity;

.field private mOrg:Landroidx/fragment/app/FragmentActivity;

.field final synthetic this$0:Lcom/metamoji/ui/UiCurrentActivityManager;


# direct methods
.method static bridge synthetic -$$Nest$fputmNew(Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;->mNew:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOrg(Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;->mOrg:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/UiCurrentActivityManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;->this$0:Lcom/metamoji/ui/UiCurrentActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;->mOrg:Landroidx/fragment/app/FragmentActivity;

    .line 59
    iput-object p1, p0, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;->mNew:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method


# virtual methods
.method public getNewActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;->mNew:Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method

.method public getPrevActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;->mOrg:Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method
