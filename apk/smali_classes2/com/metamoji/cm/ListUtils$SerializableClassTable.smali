.class public Lcom/metamoji/cm/ListUtils$SerializableClassTable;
.super Ljava/lang/Object;
.source "ListUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cm/ListUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerializableClassTable"
.end annotation


# instance fields
.field public classId:I

.field public className:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/metamoji/cm/ListUtils$SerializableClassTable;->className:Ljava/lang/String;

    .line 105
    iput p2, p0, Lcom/metamoji/cm/ListUtils$SerializableClassTable;->classId:I

    return-void
.end method
