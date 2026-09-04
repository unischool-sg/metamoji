.class public Lcom/metamoji/noteanytime/SerializableClasses;
.super Ljava/lang/Object;
.source "SerializableClasses.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/noteanytime/SerializableClasses$MMJEdSerializableClass;
    }
.end annotation


# static fields
.field private static final serializableClassTable:[Lcom/metamoji/cm/ListUtils$SerializableClassTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x8

    .line 38
    new-array v0, v0, [Lcom/metamoji/cm/ListUtils$SerializableClassTable;

    new-instance v1, Lcom/metamoji/cm/ListUtils$SerializableClassTable;

    const-class v2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 39
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/metamoji/cm/ListUtils$SerializableClassTable;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cm/ListUtils$SerializableClassTable;

    const-class v2, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    .line 40
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4}, Lcom/metamoji/cm/ListUtils$SerializableClassTable;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/metamoji/cm/ListUtils$SerializableClassTable;

    const-class v2, Lcom/metamoji/un/text/model/attr/StringAttributes;

    .line 41
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/metamoji/cm/ListUtils$SerializableClassTable;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/metamoji/cm/ListUtils$SerializableClassTable;

    const-class v2, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;

    .line 42
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/metamoji/cm/ListUtils$SerializableClassTable;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/metamoji/cm/ListUtils$SerializableClassTable;

    const-class v2, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    .line 43
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/metamoji/cm/ListUtils$SerializableClassTable;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cm/ListUtils$SerializableClassTable;

    const-class v3, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    .line 44
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/metamoji/cm/ListUtils$SerializableClassTable;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cm/ListUtils$SerializableClassTable;

    const-class v3, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;

    .line 45
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/metamoji/cm/ListUtils$SerializableClassTable;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cm/ListUtils$SerializableClassTable;

    const-class v3, Lcom/metamoji/nt/NtAuthorInfo;

    .line 46
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/metamoji/cm/ListUtils$SerializableClassTable;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/metamoji/noteanytime/SerializableClasses;->serializableClassTable:[Lcom/metamoji/cm/ListUtils$SerializableClassTable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize()V
    .locals 1

    .line 50
    sget-object v0, Lcom/metamoji/noteanytime/SerializableClasses;->serializableClassTable:[Lcom/metamoji/cm/ListUtils$SerializableClassTable;

    invoke-static {v0}, Lcom/metamoji/cm/ListUtils;->initialize([Lcom/metamoji/cm/ListUtils$SerializableClassTable;)V

    return-void
.end method
