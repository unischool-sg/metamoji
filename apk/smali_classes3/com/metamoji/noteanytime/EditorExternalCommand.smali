.class public final Lcom/metamoji/noteanytime/EditorExternalCommand;
.super Ljava/lang/Object;
.source "EditorExternalCommand.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/noteanytime/EditorExternalCommand$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0011\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0008J\u0016\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0001R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000f8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/metamoji/noteanytime/EditorExternalCommand;",
        "",
        "src",
        "Landroid/os/Bundle;",
        "<init>",
        "(Landroid/os/Bundle;)V",
        "command",
        "Lcom/metamoji/nt/NtCommand;",
        "(Lcom/metamoji/nt/NtCommand;)V",
        "bundle",
        "getBundle",
        "()Landroid/os/Bundle;",
        "getCommand",
        "()Lcom/metamoji/nt/NtCommand;",
        "v",
        "Lcom/metamoji/cm/CmContext;",
        "context",
        "getContext",
        "()Lcom/metamoji/cm/CmContext;",
        "setContext",
        "(Lcom/metamoji/cm/CmContext;)V",
        "put",
        "key",
        "",
        "value",
        "Companion",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/metamoji/noteanytime/EditorExternalCommand$Companion;

.field private static final cmdKey:Ljava/lang/String; = "@@)__commandKey__"

.field private static preferMMJSize:Z


# instance fields
.field private final bundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/noteanytime/EditorExternalCommand$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/noteanytime/EditorExternalCommand$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/noteanytime/EditorExternalCommand;->Companion:Lcom/metamoji/noteanytime/EditorExternalCommand$Companion;

    const/4 v0, 0x1

    .line 69
    sput-boolean v0, Lcom/metamoji/noteanytime/EditorExternalCommand;->preferMMJSize:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/NtCommand;)V
    .locals 2

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/metamoji/noteanytime/EditorExternalCommand;-><init>(Landroid/os/Bundle;)V

    .line 52
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    const-string v1, "@@)__commandKey__"

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getPreferMMJSize$cp()Z
    .locals 1

    .line 47
    sget-boolean v0, Lcom/metamoji/noteanytime/EditorExternalCommand;->preferMMJSize:Z

    return v0
.end method

.method public static final synthetic access$setPreferMMJSize$cp(Z)V
    .locals 0

    .line 47
    sput-boolean p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->preferMMJSize:Z

    return-void
.end method


# virtual methods
.method public final getBundle()Landroid/os/Bundle;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getCommand()Lcom/metamoji/nt/NtCommand;
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    const-string v1, "@@)__commandKey__"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/metamoji/nt/NtCommand;->valueOf(Ljava/lang/String;)Lcom/metamoji/nt/NtCommand;

    move-result-object v0

    return-object v0
.end method

.method public final getContext()Lcom/metamoji/cm/CmContext;
    .locals 6

    .line 107
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 109
    const-string v3, "@@)__commandKey__"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-object v3, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 113
    sget-boolean v4, Lcom/metamoji/noteanytime/EditorExternalCommand;->preferMMJSize:Z

    if-eqz v4, :cond_2

    .line 115
    instance-of v4, v3, Landroid/util/Size;

    if-eqz v4, :cond_1

    new-instance v4, Lcom/metamoji/cm/Size;

    check-cast v3, Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v4, v5, v3}, Lcom/metamoji/cm/Size;-><init>(II)V

    :goto_1
    move-object v3, v4

    goto :goto_2

    .line 116
    :cond_1
    instance-of v4, v3, Landroid/util/SizeF;

    if-eqz v4, :cond_2

    new-instance v4, Lcom/metamoji/cm/SizeF;

    check-cast v3, Landroid/util/SizeF;

    invoke-virtual {v3}, Landroid/util/SizeF;->getWidth()F

    move-result v5

    invoke-virtual {v3}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    invoke-direct {v4, v5, v3}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    goto :goto_1

    .line 119
    :cond_2
    :goto_2
    invoke-virtual {v0, v2, v3}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final put(Ljava/lang/String;Ljava/lang/Object;)Lcom/metamoji/noteanytime/EditorExternalCommand;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    instance-of v0, p2, Ljava/io/Serializable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0

    .line 130
    :cond_0
    instance-of v0, p2, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0

    .line 131
    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0

    .line 132
    :cond_2
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0

    .line 133
    :cond_3
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p0

    .line 134
    :cond_4
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-object p0

    .line 135
    :cond_5
    instance-of v0, p2, Landroid/util/SizeF;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    check-cast p2, Landroid/util/SizeF;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V

    return-object p0

    .line 136
    :cond_6
    instance-of v0, p2, Landroid/util/Size;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    check-cast p2, Landroid/util/Size;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    return-object p0

    .line 137
    :cond_7
    instance-of v0, p2, Lcom/metamoji/cm/SizeF;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    new-instance v1, Landroid/util/SizeF;

    check-cast p2, Lcom/metamoji/cm/SizeF;

    iget v2, p2, Lcom/metamoji/cm/SizeF;->width:F

    iget p2, p2, Lcom/metamoji/cm/SizeF;->height:F

    invoke-direct {v1, v2, p2}, Landroid/util/SizeF;-><init>(FF)V

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V

    return-object p0

    .line 138
    :cond_8
    instance-of v0, p2, Lcom/metamoji/cm/Size;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    new-instance v1, Landroid/util/Size;

    check-cast p2, Lcom/metamoji/cm/Size;

    iget v2, p2, Lcom/metamoji/cm/Size;->width:I

    iget p2, p2, Lcom/metamoji/cm/Size;->height:I

    invoke-direct {v1, v2, p2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    return-object p0

    .line 139
    :cond_9
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 140
    :cond_a
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0

    .line 141
    :cond_b
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    return-object p0

    .line 142
    :cond_c
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->byteValue()B

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    return-object p0

    .line 143
    :cond_d
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->shortValue()S

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    return-object p0

    .line 144
    :cond_e
    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0

    .line 145
    :cond_f
    instance-of v0, p2, [I

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    check-cast p2, [I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object p0

    .line 146
    :cond_10
    instance-of v0, p2, [J

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    check-cast p2, [J

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    return-object p0

    .line 147
    :cond_11
    instance-of v0, p2, [F

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    check-cast p2, [F

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    return-object p0

    .line 148
    :cond_12
    instance-of v0, p2, [D

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorExternalCommand;->bundle:Landroid/os/Bundle;

    check-cast p2, [D

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-object p0

    .line 149
    :cond_13
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "Unknown data type for EditorExternalCommand."

    invoke-direct {p1, p2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setContext(Lcom/metamoji/cm/CmContext;)V
    .locals 3

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lcom/metamoji/cm/CmContext;->extraData()Ljava/util/Map;

    move-result-object p1

    const-string v0, "extraData(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<get-key>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "<get-value>(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/noteanytime/EditorExternalCommand;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/metamoji/noteanytime/EditorExternalCommand;

    goto :goto_0

    :cond_0
    return-void
.end method
