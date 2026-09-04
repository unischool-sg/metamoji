.class Lcom/metamoji/ui/HistoryBarDriver$1;
.super Ljava/lang/Object;
.source "HistoryBarDriver.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/HistoryBarDriver;->init(Landroidx/fragment/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/HistoryBarDriver;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/HistoryBarDriver;)V
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
    iput-object p1, p0, Lcom/metamoji/ui/HistoryBarDriver$1;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$1;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-static {v0, p1}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$monMoreButtonClicked(Lcom/metamoji/ui/HistoryBarDriver;Landroid/view/View;)V

    return-void
.end method
