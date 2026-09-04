.class public final Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Class;
.super Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;
.source "KotlinClassMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Class"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKotlinClassMetadata.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinClassMetadata.kt\nkotlin/metadata/jvm/KotlinClassMetadata$Class\n+ 2 JvmExceptionUtils.kt\nkotlin/metadata/jvm/internal/JvmExceptionUtilsKt\n*L\n1#1,477:1\n28#2,8:478\n*S KotlinDebug\n*F\n+ 1 KotlinClassMetadata.kt\nkotlin/metadata/jvm/KotlinClassMetadata$Class\n*L\n105#1:478,8\n*E\n"
.end annotation


# instance fields
.field private flags:I

.field private kmClass:Lkotlin/reflect/jvm/internal/impl/km/KmClass;

.field private version:Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;


# direct methods
.method public constructor <init>(Lkotlin/Metadata;Z)V
    .locals 3

    const-string v0, "annotationData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmReadUtils;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmReadUtils;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmReadUtils;->readKmClass$kotlin_metadata_jvm(Lkotlin/Metadata;)Lkotlin/reflect/jvm/internal/impl/km/KmClass;

    move-result-object v0

    .line 96
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;

    invoke-interface {p1}, Lkotlin/Metadata;->mv()[I

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;-><init>([I)V

    .line 97
    invoke-interface {p1}, Lkotlin/Metadata;->xi()I

    move-result p1

    .line 94
    invoke-direct {p0, v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Class;-><init>(Lkotlin/reflect/jvm/internal/impl/km/KmClass;Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;I)V

    xor-int/lit8 p1, p2, 0x1

    .line 99
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Class;->setAllowedToWrite$kotlin_metadata_jvm(Z)V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/km/KmClass;Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;I)V
    .locals 1

    const-string v0, "kmClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 89
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Class;->kmClass:Lkotlin/reflect/jvm/internal/impl/km/KmClass;

    .line 90
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Class;->version:Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;

    .line 91
    iput p3, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Class;->flags:I

    return-void
.end method


# virtual methods
.method public final getKmClass()Lkotlin/reflect/jvm/internal/impl/km/KmClass;
    .locals 1

    .line 89
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Class;->kmClass:Lkotlin/reflect/jvm/internal/impl/km/KmClass;

    return-object v0
.end method
