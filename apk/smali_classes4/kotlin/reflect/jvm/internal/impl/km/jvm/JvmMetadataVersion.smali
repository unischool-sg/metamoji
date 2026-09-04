.class public final Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;
.super Ljava/lang/Object;
.source "JvmMetadataVersion.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJvmMetadataVersion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmMetadataVersion.kt\nkotlin/metadata/jvm/JvmMetadataVersion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,120:1\n1#2:121\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion$Companion;

.field public static final HIGHEST_ALLOWED_TO_WRITE:Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;

.field public static final LATEST_STABLE_SUPPORTED:Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;


# instance fields
.field private final major:I

.field private final minor:I

.field private final patch:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->Companion:Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion$Companion;

    .line 114
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->toArray()[I

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;-><init>([I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->LATEST_STABLE_SUPPORTED:Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;

    .line 117
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->INSTANCE_NEXT:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->toArray()[I

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;-><init>([I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->HIGHEST_ALLOWED_TO_WRITE:Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->major:I

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->minor:I

    iput p3, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->patch:I

    if-ltz p1, :cond_2

    if-ltz p2, :cond_1

    if-ltz p3, :cond_0

    return-void

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Patch version should be not less than 0"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Minor version should be not less than 0"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Major version should be not less than 0"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([I)V
    .locals 3

    const-string v0, "intArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 37
    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-direct {p0, v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;-><init>(III)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->compareTo(Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;)I
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->major:I

    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->major:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 58
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->minor:I

    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->minor:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 59
    :cond_1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->patch:I

    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->patch:I

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 85
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 87
    :cond_2
    const-string v1, "null cannot be cast to non-null type kotlin.metadata.jvm.JvmMetadataVersion"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;

    .line 89
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->major:I

    iget v3, p1, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->major:I

    if-eq v1, v3, :cond_3

    return v2

    .line 90
    :cond_3
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->minor:I

    iget v3, p1, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->minor:I

    if-eq v1, v3, :cond_4

    return v2

    .line 91
    :cond_4
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->patch:I

    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->patch:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 72
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->major:I

    mul-int/lit8 v0, v0, 0x1f

    .line 73
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->minor:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 74
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->patch:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->minor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->patch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
