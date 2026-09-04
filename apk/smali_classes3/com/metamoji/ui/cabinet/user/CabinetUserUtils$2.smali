.class Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$2;
.super Ljava/lang/Object;
.source "CabinetUserUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->logOperation(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 563
    invoke-static {}, Lcom/metamoji/dvm/DvmUtil;->sendOperationLog()V

    return-void
.end method
