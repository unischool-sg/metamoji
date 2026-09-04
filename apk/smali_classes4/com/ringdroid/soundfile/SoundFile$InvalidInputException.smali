.class public Lcom/ringdroid/soundfile/SoundFile$InvalidInputException;
.super Ljava/lang/Exception;
.source "SoundFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ringdroid/soundfile/SoundFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InvalidInputException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x22c607f5043e5b6dL


# instance fields
.field final synthetic this$0:Lcom/ringdroid/soundfile/SoundFile;


# direct methods
.method public constructor <init>(Lcom/ringdroid/soundfile/SoundFile;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/ringdroid/soundfile/SoundFile$InvalidInputException;->this$0:Lcom/ringdroid/soundfile/SoundFile;

    .line 80
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
