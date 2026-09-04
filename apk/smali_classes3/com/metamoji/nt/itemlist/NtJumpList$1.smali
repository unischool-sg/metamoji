.class Lcom/metamoji/nt/itemlist/NtJumpList$1;
.super Ljava/lang/Object;
.source "NtJumpList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtJumpList;->initializeList(Lcom/metamoji/nt/NtNoteController;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtJumpList;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtJumpList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpList$1;->this$0:Lcom/metamoji/nt/itemlist/NtJumpList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 90
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/nt/itemlist/NtJumpList$1$1;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/itemlist/NtJumpList$1$1;-><init>(Lcom/metamoji/nt/itemlist/NtJumpList$1;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method
