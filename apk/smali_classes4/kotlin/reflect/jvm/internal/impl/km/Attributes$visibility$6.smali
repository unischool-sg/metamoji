.class final synthetic Lkotlin/reflect/jvm/internal/impl/km/Attributes$visibility$6;
.super Lkotlin/jvm/internal/MutablePropertyReference1Impl;
.source "Attributes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/Attributes$visibility$6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/Attributes$visibility$6;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/km/Attributes$visibility$6;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/Attributes$visibility$6;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/Attributes$visibility$6;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    const-class v0, Lkotlin/reflect/jvm/internal/impl/km/KmConstructor;

    const-string v1, "getFlags$kotlin_metadata()I"

    const/4 v2, 0x0

    const-string v3, "flags"

    invoke-direct {p0, v0, v3, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 186
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmConstructor;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/KmConstructor;->getFlags$kotlin_metadata()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 186
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmConstructor;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/km/KmConstructor;->setFlags$kotlin_metadata(I)V

    return-void
.end method
