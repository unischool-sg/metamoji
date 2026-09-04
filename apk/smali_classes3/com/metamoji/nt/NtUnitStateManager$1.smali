.class Lcom/metamoji/nt/NtUnitStateManager$1;
.super Ljava/lang/Object;
.source "NtUnitStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtUnitStateManager;->handleCollaboPropertyChanged(Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtUnitStateManager;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtUnitStateManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitStateManager$1;->this$0:Lcom/metamoji/nt/NtUnitStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 146
    invoke-static {}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->getUnitEditUserInfoView()Lcom/metamoji/nt/NtUnitEditUserInfoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->checkTargetLayer()V

    :cond_0
    return-void
.end method
