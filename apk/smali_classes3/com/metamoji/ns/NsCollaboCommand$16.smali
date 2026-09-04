.class Lcom/metamoji/ns/NsCollaboCommand$16;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboDistribute(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    return-void

    .line 1419
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboDistributeUrlByApplication()V

    return-void

    .line 1415
    :cond_1
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboDistributeByApplication()V

    return-void
.end method
