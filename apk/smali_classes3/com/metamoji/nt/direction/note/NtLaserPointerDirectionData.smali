.class public Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;
.super Lcom/metamoji/ns/direction/NsDirectionData;
.source "NtLaserPointerDirectionData.java"


# static fields
.field static final MMJNT_MODELPROPVALUE_LASERPOINTERDIRECTION_VERSION_LATEST:I = 0x1

.field static final MMJNT_MODELPROP_LASERPOINTERDIRECTION_DATA:Ljava/lang/String; = "d"

.field static final MMJNT_MODELTYPE_LASERPOINTERDIRECTION:Ljava/lang/String; = "laserpointerdirection"


# instance fields
.field private _direction:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionData;-><init>(Ljava/lang/Object;)V

    .line 31
    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;->_direction:Ljava/util/HashMap;

    return-void
.end method

.method public static createLaserPointerData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static isTargetDirection(Ljava/lang/Object;)Z
    .locals 1

    .line 64
    const-string v0, "laserpointerdirection"

    invoke-static {p0, v0}, Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;->isDictionaryDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static newDirectionData()Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;
    .locals 3

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    const-string v1, "!type"

    const-string v2, "laserpointerdirection"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "!version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v1, Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;

    invoke-direct {v1, v0}, Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public laserPointerData()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;->_direction:Ljava/util/HashMap;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public setLaserPointerData(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;->_direction:Ljava/util/HashMap;

    const-string v1, "d"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
