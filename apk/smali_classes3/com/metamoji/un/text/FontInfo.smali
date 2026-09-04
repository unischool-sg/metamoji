.class public Lcom/metamoji/un/text/FontInfo;
.super Ljava/lang/Object;
.source "FontInfo.java"


# instance fields
.field public boldFontFile:Ljava/io/File;

.field public dispName:Ljava/lang/String;

.field public familyName:Ljava/lang/String;

.field public fontId:Lcom/metamoji/un/text/FontId;

.field public normalFontFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/un/text/FontId;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/metamoji/un/text/FontInfo;->familyName:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/metamoji/un/text/FontInfo;->dispName:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/metamoji/un/text/FontInfo;->fontId:Lcom/metamoji/un/text/FontId;

    .line 16
    iput-object p4, p0, Lcom/metamoji/un/text/FontInfo;->normalFontFile:Ljava/io/File;

    .line 17
    iput-object p4, p0, Lcom/metamoji/un/text/FontInfo;->boldFontFile:Ljava/io/File;

    return-void
.end method
