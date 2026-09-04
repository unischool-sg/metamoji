.class Lcom/metamoji/df/model/ModelManager$LowMemoryListener;
.super Ljava/lang/Object;
.source "ModelManager.java"

# interfaces
.implements Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/model/ModelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LowMemoryListener"
.end annotation


# instance fields
.field mOwner:Lcom/metamoji/df/model/ModelManager;


# direct methods
.method constructor <init>(Lcom/metamoji/df/model/ModelManager;)V
    .locals 0

    .line 2112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2113
    iput-object p1, p0, Lcom/metamoji/df/model/ModelManager$LowMemoryListener;->mOwner:Lcom/metamoji/df/model/ModelManager;

    return-void
.end method


# virtual methods
.method destruct()V
    .locals 1

    const/4 v0, 0x0

    .line 2117
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager$LowMemoryListener;->mOwner:Lcom/metamoji/df/model/ModelManager;

    return-void
.end method

.method public didReceiveMemoryWarning()V
    .locals 3

    .line 2122
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager$LowMemoryListener;->mOwner:Lcom/metamoji/df/model/ModelManager;

    if-nez v0, :cond_0

    return-void

    .line 2125
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->lock()V

    .line 2127
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager$LowMemoryListener;->mOwner:Lcom/metamoji/df/model/ModelManager;

    invoke-static {v0}, Lcom/metamoji/df/model/ModelManager;->-$$Nest$fgetstateData(Lcom/metamoji/df/model/ModelManager;)Lcom/metamoji/df/model/StateData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData;->didReceiveMemoryWarning()V

    .line 2130
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager$LowMemoryListener;->mOwner:Lcom/metamoji/df/model/ModelManager;

    invoke-static {v0}, Lcom/metamoji/df/model/ModelManager;->-$$Nest$fgetmodelTable(Lcom/metamoji/df/model/ModelManager;)Lcom/metamoji/df/model/ByteData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v0

    sget v1, Lcom/metamoji/df/model/ModelTableHeader;->SIZE:I

    sub-int/2addr v0, v1

    sget v1, Lcom/metamoji/df/model/ModelTableItem;->SIZE:I

    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 2139
    :goto_0
    iget-object v2, p0, Lcom/metamoji/df/model/ModelManager$LowMemoryListener;->mOwner:Lcom/metamoji/df/model/ModelManager;

    if-ge v1, v0, :cond_2

    .line 2132
    :try_start_1
    invoke-static {v2}, Lcom/metamoji/df/model/ModelManager;->-$$Nest$fgetmodelList(Lcom/metamoji/df/model/ModelManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/model/Model;

    if-eqz v2, :cond_1

    .line 2134
    invoke-virtual {v2}, Lcom/metamoji/df/model/Model;->didReceiveMemoryWarning()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2139
    :cond_2
    invoke-virtual {v2}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager$LowMemoryListener;->mOwner:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    .line 2140
    throw v0
.end method
