.class Lcom/metamoji/ui/HistoryBarDriver$2;
.super Ljava/lang/Object;
.source "HistoryBarDriver.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/HistoryBarDriver;->init(Landroidx/fragment/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Lcom/metamoji/nt/NtUserDefaults;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/HistoryBarDriver;

.field final synthetic val$owner:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/HistoryBarDriver;Landroidx/fragment/app/FragmentActivity;)V
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

    .line 194
    iput-object p1, p0, Lcom/metamoji/ui/HistoryBarDriver$2;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    iput-object p2, p0, Lcom/metamoji/ui/HistoryBarDriver$2;->val$owner:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/nt/NtUserDefaults;)V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$2;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver$2;->val$owner:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, p1, v1}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$monVisibilitySettingChanged(Lcom/metamoji/ui/HistoryBarDriver;Lcom/metamoji/nt/NtUserDefaults;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 194
    check-cast p1, Lcom/metamoji/nt/NtUserDefaults;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/HistoryBarDriver$2;->invoke(Lcom/metamoji/nt/NtUserDefaults;)V

    return-void
.end method
