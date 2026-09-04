.class Lcom/metamoji/ns/NsCollaboUtils$8;
.super Ljava/lang/Object;
.source "NsCollaboUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboUtils;->showLoginRoomErrorMessageForSocket(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 588
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->changeCollaboMode()V

    return-void
.end method
