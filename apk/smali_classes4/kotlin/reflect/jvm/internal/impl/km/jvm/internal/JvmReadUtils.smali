.class public final Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmReadUtils;
.super Ljava/lang/Object;
.source "JvmReadUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJvmReadUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmReadUtils.kt\nkotlin/metadata/jvm/internal/JvmReadUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 JvmExceptionUtils.kt\nkotlin/metadata/jvm/internal/JvmExceptionUtilsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n1#2:100\n15#3,8:101\n3347#4,10:109\n1300#4,2:119\n1315#4,4:121\n*S KotlinDebug\n*F\n+ 1 JvmReadUtils.kt\nkotlin/metadata/jvm/internal/JvmReadUtils\n*L\n48#1:101,8\n64#1:109,10\n67#1:119,2\n67#1:121,4\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmReadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmReadUtils;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmReadUtils;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmReadUtils;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmReadUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkMetadataVersionForRead(Lkotlin/Metadata;Z)V
    .locals 2

    .line 78
    invoke-interface {p1}, Lkotlin/Metadata;->mv()[I

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    .line 81
    invoke-interface {p1}, Lkotlin/Metadata;->mv()[I

    move-result-object v1

    .line 82
    invoke-interface {p1}, Lkotlin/Metadata;->xi()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 80
    :goto_0
    invoke-direct {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;-><init>([IZ)V

    .line 84
    invoke-virtual {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmReadUtils;->throwIfNotCompatible$kotlin_metadata_jvm(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;Z)V

    return-void

    .line 79
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final isLessThan14(Lkotlin/Metadata;)Z
    .locals 4

    .line 23
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;

    invoke-interface {p1}, Lkotlin/Metadata;->mv()[I

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;-><init>([I)V

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {p1, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;-><init>(III)V

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;->compareTo(Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;)I

    move-result p1

    if-gez p1, :cond_0

    return v1

    :cond_0
    return v3
.end method


# virtual methods
.method public final readKmClass$kotlin_metadata_jvm(Lkotlin/Metadata;)Lkotlin/reflect/jvm/internal/impl/km/KmClass;
    .locals 8

    const-string v0, "annotationData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmExceptionUtilsKt;->requireNotEmpty(Lkotlin/Metadata;)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lkotlin/Metadata;->d2()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->readClassDataFrom([Ljava/lang/String;[Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmNameResolver;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    .line 28
    move-object v3, v1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmReadUtils;->isLessThan14(Lkotlin/Metadata;)Z

    move-result v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmClass$default(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;ZLjava/util/List;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/km/KmClass;

    move-result-object p1

    return-object p1
.end method

.method public final readKmLambda$kotlin_metadata_jvm(Lkotlin/Metadata;)Lkotlin/reflect/jvm/internal/impl/km/KmLambda;
    .locals 3

    const-string v0, "annotationData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-interface {p1}, Lkotlin/Metadata;->d1()[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 39
    invoke-interface {p1}, Lkotlin/Metadata;->d2()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->readFunctionDataFrom([Ljava/lang/String;[Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmNameResolver;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    .line 42
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmReadUtils;->isLessThan14(Lkotlin/Metadata;)Z

    move-result p1

    invoke-static {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmLambda(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Z)Lkotlin/reflect/jvm/internal/impl/km/KmLambda;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_2
    return-object v2
.end method

.method public final readKmPackage$kotlin_metadata_jvm(Lkotlin/Metadata;)Lkotlin/reflect/jvm/internal/impl/km/KmPackage;
    .locals 8

    const-string v0, "annotationData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmExceptionUtilsKt;->requireNotEmpty(Lkotlin/Metadata;)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lkotlin/Metadata;->d2()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->readPackageDataFrom([Ljava/lang/String;[Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmNameResolver;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;

    .line 33
    move-object v3, v1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmReadUtils;->isLessThan14(Lkotlin/Metadata;)Z

    move-result v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmPackage$default(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;ZLjava/util/List;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/km/KmPackage;

    move-result-object p1

    return-object p1
.end method

.method public final readMetadataImpl$kotlin_metadata_jvm(Lkotlin/Metadata;Z)Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;
    .locals 2

    const-string v0, "annotationData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmReadUtils;->checkMetadataVersionForRead(Lkotlin/Metadata;Z)V

    .line 49
    :try_start_0
    invoke-interface {p1}, Lkotlin/Metadata;->k()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 55
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Unknown;

    invoke-direct {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Unknown;-><init>(Lkotlin/Metadata;Z)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;

    return-object v0

    .line 54
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$MultiFileClassPart;

    invoke-direct {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$MultiFileClassPart;-><init>(Lkotlin/Metadata;Z)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;

    return-object v0

    .line 53
    :cond_1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$MultiFileClassFacade;

    invoke-direct {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$MultiFileClassFacade;-><init>(Lkotlin/Metadata;Z)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;

    return-object v0

    .line 52
    :cond_2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$SyntheticClass;

    invoke-direct {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$SyntheticClass;-><init>(Lkotlin/Metadata;Z)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;

    return-object v0

    .line 51
    :cond_3
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$FileFacade;

    invoke-direct {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$FileFacade;-><init>(Lkotlin/Metadata;Z)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;

    return-object v0

    .line 50
    :cond_4
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Class;

    invoke-direct {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Class;-><init>(Lkotlin/Metadata;Z)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 105
    instance-of p2, p1, Ljava/lang/IllegalArgumentException;

    if-nez p2, :cond_6

    .line 106
    instance-of p2, p1, Ljava/lang/VirtualMachineError;

    if-nez p2, :cond_6

    instance-of p2, p1, Ljava/lang/ThreadDeath;

    if-eqz p2, :cond_5

    goto :goto_0

    .line 108
    :cond_5
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/km/InconsistentKotlinMetadataException;

    const-string v0, "Exception occurred when reading Kotlin metadata"

    invoke-direct {p2, v0, p1}, Lkotlin/reflect/jvm/internal/impl/km/InconsistentKotlinMetadataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, p2

    check-cast p1, Ljava/lang/Throwable;

    :cond_6
    :goto_0
    throw p1
.end method

.method public final throwIfNotCompatible$kotlin_metadata_jvm(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;Z)V
    .locals 3

    const-string v0, "jvmMetadataVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p1, v0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->isAtLeast(III)Z

    move-result v0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->isCompatibleWithCurrentCompilerVersion()Z

    move-result p2

    :goto_0
    if-nez p2, :cond_3

    if-eqz v0, :cond_2

    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "while maximum supported version is "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->isStrictSemantics()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    goto :goto_1

    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->INSTANCE_NEXT:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ". To support newer versions, update the kotlin-metadata-jvm library."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 93
    :cond_2
    const-string p2, "while minimum supported version is 1.1.0 (Kotlin 1.0)."

    .line 95
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Provided Metadata instance has version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method
