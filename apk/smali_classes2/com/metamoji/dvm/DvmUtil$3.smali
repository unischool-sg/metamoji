.class Lcom/metamoji/dvm/DvmUtil$3;
.super Lcom/metamoji/sd/SdParameterizedBlock;
.source "DvmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dvm/DvmUtil;->createLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/sd/SdParameterizedBlock<",
        "Ljava/lang/Void;",
        "Lcom/metamoji/sd/SdError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$error:Lcom/metamoji/sd/SdValue;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdValue;)V
    .locals 0

    .line 1116
    iput-object p1, p0, Lcom/metamoji/dvm/DvmUtil$3;->val$error:Lcom/metamoji/sd/SdValue;

    invoke-direct {p0}, Lcom/metamoji/sd/SdParameterizedBlock;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1116
    invoke-virtual {p0}, Lcom/metamoji/dvm/DvmUtil$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1119
    iget-object v0, p0, Lcom/metamoji/dvm/DvmUtil$3;->val$error:Lcom/metamoji/sd/SdValue;

    invoke-virtual {p0}, Lcom/metamoji/dvm/DvmUtil$3;->getArgument()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/sd/SdError;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method
