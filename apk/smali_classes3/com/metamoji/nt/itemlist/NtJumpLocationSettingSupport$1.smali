.class Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport$1;
.super Ljava/lang/Object;
.source "NtJumpLocationSettingSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->contextShowDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 403
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport$1;->this$0:Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport$1;->this$0:Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->showContextMenu()V

    return-void
.end method
