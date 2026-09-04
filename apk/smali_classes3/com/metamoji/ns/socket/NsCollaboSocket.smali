.class public Lcom/metamoji/ns/socket/NsCollaboSocket;
.super Ljava/lang/Object;
.source "NsCollaboSocket.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final m_lockObject:Ljava/lang/Object;

.field private static s_regexKey:Ljava/util/regex/Pattern;

.field private static s_regexPacket:Ljava/util/regex/Pattern;

.field private static s_regexValue:Ljava/util/regex/Pattern;

.field static s_sendPacketNo:J


# instance fields
.field private mConnectingCheckTick:J

.field m_binaryModeBoothId:Ljava/lang/String;

.field m_binaryModeData:Ljava/io/ByteArrayOutputStream;

.field m_binaryModePacketNo:Ljava/lang/String;

.field m_binaryModeParamDic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_binaryModeRequiredSize:I

.field m_bufData:Ljava/io/ByteArrayOutputStream;

.field m_connectingCheckTimer:Ljava/util/Timer;

.field m_connectingProxyHost:Ljava/lang/String;

.field m_connectingProxyPort:I

.field m_handler:Lcom/metamoji/ns/socket/INsCollaboSocketHandler;

.field m_iReader:Ljava/io/BufferedInputStream;

.field m_iReaderLockObject:Ljava/lang/Object;

.field m_oWriter:Ljava/io/BufferedOutputStream;

.field m_oWriterLockObject:Ljava/lang/Object;

.field m_proxyConnecting:Z

.field m_sendStopFlag:Z

.field m_shutdown:Z

.field m_socket:Ljava/net/Socket;

.field m_targetDocId:Ljava/lang/String;

.field m_targetDriveId:Ljava/lang/String;

.field m_withSSL:Z


# direct methods
.method public static synthetic $r8$lambda$Lf8qyuKej9VlpyW7HiID7U1nrJI(Lcom/metamoji/ns/socket/NsCollaboSocket;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/socket/NsCollaboSocket;->lambda$postCommand$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$rsYW1QcCiPN2MWmLosp2TC4Xa9o(Lcom/metamoji/ns/socket/NsCollaboSocket;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/socket/NsCollaboSocket;->lambda$onConnectingCheckTimer$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmConnectingCheckTick(Lcom/metamoji/ns/socket/NsCollaboSocket;)J
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->mConnectingCheckTick:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmConnectingCheckTick(Lcom/metamoji/ns/socket/NsCollaboSocket;J)V
    .locals 0

    iput-wide p1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->mConnectingCheckTick:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mReceiveDataAsync(Lcom/metamoji/ns/socket/NsCollaboSocket;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/socket/NsCollaboSocket;->ReceiveDataAsync()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 43
    const-string v0, " "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ns/socket/NsCollaboSocket;->s_regexKey:Ljava/util/regex/Pattern;

    .line 44
    const-string v0, ":"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ns/socket/NsCollaboSocket;->s_regexValue:Ljava/util/regex/Pattern;

    .line 45
    const-string v0, "\t"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ns/socket/NsCollaboSocket;->s_regexPacket:Ljava/util/regex/Pattern;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_lockObject:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 703
    sput-wide v0, Lcom/metamoji/ns/socket/NsCollaboSocket;->s_sendPacketNo:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_handler:Lcom/metamoji/ns/socket/INsCollaboSocketHandler;

    .line 51
    iput-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_socket:Ljava/net/Socket;

    .line 52
    iput-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_oWriter:Ljava/io/BufferedOutputStream;

    .line 53
    iput-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_iReader:Ljava/io/BufferedInputStream;

    .line 54
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_oWriterLockObject:Ljava/lang/Object;

    .line 55
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_iReaderLockObject:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_sendStopFlag:Z

    .line 74
    iput-boolean v1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_proxyConnecting:Z

    .line 81
    iput-boolean v1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_withSSL:Z

    .line 84
    iput-boolean v1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_shutdown:Z

    .line 100
    iput-object p1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_targetDriveId:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_targetDocId:Ljava/lang/String;

    .line 103
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_bufData:Ljava/io/ByteArrayOutputStream;

    .line 104
    iput v1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeRequiredSize:I

    .line 105
    iput-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeData:Ljava/io/ByteArrayOutputStream;

    .line 106
    iput-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeParamDic:Ljava/util/Map;

    .line 107
    iput-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeBoothId:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModePacketNo:Ljava/lang/String;

    .line 109
    iput-boolean v1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_proxyConnecting:Z

    .line 110
    iput-boolean v1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_withSSL:Z

    return-void
.end method

.method private ReceiveDataAsync()V
    .locals 15

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 419
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_bufData:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    .line 420
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_bufData:Ljava/io/ByteArrayOutputStream;

    :cond_0
    const v2, 0x19000

    .line 424
    new-array v3, v2, [B

    .line 428
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_iReaderLockObject:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 429
    :try_start_1
    iget-object v5, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_iReader:Ljava/io/BufferedInputStream;

    if-nez v5, :cond_2

    .line 430
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 621
    const-string v2, "[ReceiveDataAsync] Exit"

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 622
    iput-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_bufData:Ljava/io/ByteArrayOutputStream;

    .line 626
    iget-boolean v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_shutdown:Z

    if-nez v0, :cond_1b

    goto/16 :goto_a

    :cond_2
    const/4 v6, 0x0

    .line 432
    :try_start_2
    invoke-virtual {v5, v3, v6, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    .line 433
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-gtz v5, :cond_3

    .line 437
    :try_start_3
    const-string v2, "[Received Socket Data] stream read %d bytes..."

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 442
    :cond_3
    invoke-direct {p0}, Lcom/metamoji/ns/socket/NsCollaboSocket;->resetConnectingCheckTimer()V

    .line 444
    iget-object v4, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_handler:Lcom/metamoji/ns/socket/INsCollaboSocketHandler;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v4, :cond_4

    .line 621
    const-string v2, "[ReceiveDataAsync] Exit"

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 622
    iput-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_bufData:Ljava/io/ByteArrayOutputStream;

    .line 626
    iget-boolean v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_shutdown:Z

    if-nez v0, :cond_1b

    goto/16 :goto_a

    .line 448
    :cond_4
    :try_start_4
    invoke-interface {v4, v1}, Lcom/metamoji/ns/socket/INsCollaboSocketHandler;->collaboSocketReceivingData(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 452
    :try_start_5
    iget v4, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeRequiredSize:I

    if-lez v4, :cond_5

    .line 455
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 456
    iget-object v7, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7, v3, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 457
    iget v7, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeRequiredSize:I

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeRequiredSize:I

    .line 458
    invoke-virtual {p0}, Lcom/metamoji/ns/socket/NsCollaboSocket;->binaryDataComplatedCheck()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ne v5, v4, :cond_6

    .line 614
    :try_start_6
    iget-object v4, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_handler:Lcom/metamoji/ns/socket/INsCollaboSocketHandler;

    if-eqz v4, :cond_1

    .line 615
    :goto_1
    invoke-interface {v4, v6}, Lcom/metamoji/ns/socket/INsCollaboSocketHandler;->collaboSocketReceivingData(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :cond_5
    move v4, v6

    .line 468
    :cond_6
    :try_start_7
    iget-object v7, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_bufData:Ljava/io/ByteArrayOutputStream;

    sub-int/2addr v5, v4

    invoke-virtual {v7, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 469
    iget-object v4, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_bufData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    .line 471
    iget-object v5, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_bufData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 473
    iget-boolean v7, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_proxyConnecting:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v8, 0x3

    if-eqz v7, :cond_12

    .line 476
    :try_start_8
    invoke-virtual {p0, v5}, Lcom/metamoji/ns/socket/NsCollaboSocket;->isProxyConnectStream([B)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 477
    new-instance v7, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v7, v5, v6, v4, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 478
    sget-object v9, Lcom/metamoji/ns/socket/NsCollaboSocket;->s_regexKey:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v7, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 480
    array-length v10, v9

    if-lt v10, v8, :cond_10

    .line 481
    aget-object v9, v9, v1

    .line 482
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0xc8

    if-gt v10, v9, :cond_8

    const/16 v10, 0x12b

    if-lt v10, v9, :cond_8

    .line 486
    iget-boolean v7, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_withSSL:Z

    if-eqz v7, :cond_7

    .line 487
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/SSLSocketFactory;

    .line 488
    iget-object v9, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_socket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_socket:Ljava/net/Socket;

    invoke-virtual {v11}, Ljava/net/Socket;->getPort()I

    move-result v11

    invoke-virtual {v7, v9, v10, v11, v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/SSLSocket;

    iput-object v7, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_socket:Ljava/net/Socket;

    .line 489
    move-object v9, v7

    check-cast v9, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 491
    new-instance v7, Ljava/io/BufferedOutputStream;

    iget-object v9, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_socket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v7, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_oWriter:Ljava/io/BufferedOutputStream;

    .line 493
    new-instance v7, Ljava/io/BufferedInputStream;

    iget-object v9, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_socket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v7, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_iReader:Ljava/io/BufferedInputStream;

    .line 495
    :cond_7
    iput-boolean v6, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_proxyConnecting:Z

    goto/16 :goto_4

    :cond_8
    const/16 v10, 0x197

    if-ne v9, v10, :cond_c

    .line 501
    const-string v9, "=== Proxy-Authenticate 407 ===\r\n%s"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    invoke-virtual {p0, v6}, Lcom/metamoji/ns/socket/NsCollaboSocket;->close(Z)V

    .line 505
    const-string v9, "\n\n[Proxy] %s:%d"

    iget-object v10, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_connectingProxyHost:Ljava/lang/String;

    if-eqz v10, :cond_9

    goto :goto_2

    :cond_9
    const-string v10, ""

    :goto_2
    iget v11, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_connectingProxyPort:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 506
    const-string v10, "\n"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v7

    .line 507
    array-length v10, v7

    if-lez v10, :cond_a

    .line 508
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n%s"

    aget-object v7, v7, v6

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 510
    :cond_a
    iget-object v7, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_handler:Lcom/metamoji/ns/socket/INsCollaboSocketHandler;

    invoke-interface {v7, v6, v9}, Lcom/metamoji/ns/socket/INsCollaboSocketHandler;->collaboSocketConnectServerFailed(ZLjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 614
    :try_start_9
    iget-object v2, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_handler:Lcom/metamoji/ns/socket/INsCollaboSocketHandler;

    if-eqz v2, :cond_b

    .line 615
    invoke-interface {v2, v6}, Lcom/metamoji/ns/socket/INsCollaboSocketHandler;->collaboSocketReceivingData(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 621
    :cond_b
    const-string v2, "[ReceiveDataAsync] Exit"

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 622
    iput-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_bufData:Ljava/io/ByteArrayOutputStream;

    .line 626
    iget-boolean v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_shutdown:Z

    if-nez v0, :cond_1b

    goto/16 :goto_a

    :cond_c
    const/16 v10, 0x190

    if-lt v9, v10, :cond_10

    const/16 v10, 0x257

    if-gt v9, v10, :cond_10

    .line 517
    :try_start_a
    const-string v9, "=== Proxy Connect Error ===\r\n%s"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    invoke-virtual {p0, v6}, Lcom/metamoji/ns/socket/NsCollaboSocket;->close(Z)V

    .line 521
    const-string v9, "\n\n[Proxy] %s:%d"

    iget-object v10, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_connectingProxyHost:Ljava/lang/String;

    if-eqz v10, :cond_d

    goto :goto_3

    :cond_d
    const-string v10, ""

    :goto_3
    iget v11, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_connectingProxyPort:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 522
    const-string v10, "\n"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v7

    .line 523
    array-length v10, v7

    if-lez v10, :cond_e

    .line 524
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n%s"

    aget-object v7, v7, v6

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 526
    :cond_e
    iget-object v7, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_handler:Lcom/metamoji/ns/socket/INsCollaboSocketHandler;

    invoke-interface {v7, v6, v9}, Lcom/metamoji/ns/socket/INsCollaboSocketHandler;->collaboSocketConnectServerFailed(ZLjava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 614
    :try_start_b
    iget-object v2, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_handler:Lcom/metamoji/ns/socket/INsCollaboSocketHandler;

    if-eqz v2, :cond_f

    .line 615
    invoke-interface {v2, v6}, Lcom/metamoji/ns/socket/INsCollaboSocketHandler;->collaboSocketReceivingData(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 621
    :cond_f
    const-string v2, "[ReceiveDataAsync] Exit"

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 622
    iput-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_bufData:Ljava/io/ByteArrayOutputStream;

    .line 626
    iget-boolean v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_shutdown:Z

    if-nez v0, :cond_1b

    goto/16 :goto_a

    :catch_0
    move-exception v7

    .line 533
    :try_start_c
    const-string v9, "Exception check proxy"

    invoke-static {v7, v9}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 537
    :cond_10
    :goto_4
    iget-boolean v7, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_proxyConnecting:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v7, :cond_12

    .line 614
    :try_start_d
    iget-object v2, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_handler:Lcom/metamoji/ns/socket/INsCollaboSocketHandler;

    if-eqz v2, :cond_11

    .line 615
    invoke-interface {v2, v6}, Lcom/metamoji/ns/socket/INsCollaboSocketHandler;->collaboSocketReceivingData(Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 621
    :cond_11
    :goto_5
    const-string v2, "[ReceiveDataAsync] Exit"

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 622
    iput-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_bufData:Ljava/io/ByteArrayOutputStream;

    .line 626
    iget-boolean v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_shutdown:Z

    if-nez v0, :cond_1b

    goto/16 :goto_a

    :cond_12
    move v7, v6

    move v9, v7

    :goto_6
    if-ge v7, v4, :cond_18

    .line 545
    :try_start_e
    iget-object v10, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_handler:Lcom/metamoji/ns/socket/INsCollaboSocketHandler;

    if-nez v10, :cond_13

    .line 547
    const-string v7, "[Received Socket Data] m_handle = nil ...."

    invoke-static {v7}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 552
    :cond_13
    aget-byte v10, v5, v7

    const/16 v11, 0xa

    if-ne v10, v11, :cond_17

    if-lez v7, :cond_14

    add-int/lit8 v10, v7, -0x1

    .line 556
    aget-byte v10, v5, v10

    const/16 v11, 0xd

    if-ne v10, v11, :cond_14

    move v10, v1

    goto :goto_7

    :cond_14
    move v10, v6

    .line 557
    :goto_7
    new-instance v11, Ljava/lang/String;

    sub-int v12, v7, v9

    sub-int/2addr v12, v10

    const-string v10, "UTF-8"

    invoke-direct {v11, v5, v9, v12, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v9, v7, 0x1

    .line 562
    sget-object v10, Lcom/metamoji/ns/socket/NsCollaboSocket;->s_regexPacket:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v11, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v10

    .line 563
    array-length v12, v10

    if-ge v12, v8, :cond_15

    .line 568
    const-string v10, "\n[Packet Data] =================\n%s\nsize : %d\n-------------------------------"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x12c

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v11, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v12, v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    const-string v10, "SKIP : unknown format..."

    invoke-static {v10}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    goto :goto_8

    :cond_15
    const/4 v11, 0x2

    .line 574
    aget-object v11, v10, v11

    invoke-direct {p0, v11}, Lcom/metamoji/ns/socket/NsCollaboSocket;->parseParameter(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    .line 575
    const-string v12, "binary"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, -0x1

    invoke-static {v12, v13}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v12

    .line 576
    const-string v13, "cmd"

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-lez v12, :cond_16

    if-eqz v13, :cond_16

    .line 577
    const-string v14, "PostData"

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 579
    iput v12, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeRequiredSize:I

    .line 580
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v12, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeData:Ljava/io/ByteArrayOutputStream;

    .line 582
    iput-object v11, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeParamDic:Ljava/util/Map;

    .line 583
    aget-object v11, v10, v6

    iput-object v11, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeBoothId:Ljava/lang/String;

    .line 584
    aget-object v10, v10, v1

    iput-object v10, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModePacketNo:Ljava/lang/String;

    .line 587
    iget v10, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeRequiredSize:I

    sub-int v11, v4, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-lez v10, :cond_17

    .line 589
    iget-object v11, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v11, v5, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 590
    iget v9, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeRequiredSize:I

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeRequiredSize:I

    .line 591
    invoke-virtual {p0}, Lcom/metamoji/ns/socket/NsCollaboSocket;->binaryDataComplatedCheck()V

    add-int/2addr v7, v10

    add-int/lit8 v9, v7, 0x1

    goto :goto_8

    .line 600
    :cond_16
    aget-object v12, v10, v6

    aget-object v10, v10, v1

    invoke-virtual {p0, v11, v12, v10}, Lcom/metamoji/ns/socket/NsCollaboSocket;->receivedData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_8
    add-int/2addr v7, v1

    goto/16 :goto_6

    .line 607
    :cond_18
    :goto_9
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-ge v9, v4, :cond_19

    sub-int/2addr v4, v9

    .line 609
    invoke-virtual {v7, v5, v9, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 611
    :cond_19
    iput-object v7, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_bufData:Ljava/io/ByteArrayOutputStream;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 614
    :try_start_f
    iget-object v4, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_handler:Lcom/metamoji/ns/socket/INsCollaboSocketHandler;

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_handler:Lcom/metamoji/ns/socket/INsCollaboSocketHandler;

    if-eqz v3, :cond_1a

    .line 615
    invoke-interface {v3, v6}, Lcom/metamoji/ns/socket/INsCollaboSocketHandler;->collaboSocketReceivingData(Z)V

    .line 616
    :cond_1a
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :catchall_1
    move-exception v2

    .line 433
    :try_start_10
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :catchall_2
    move-exception v2

    .line 619
    :try_start_12
    const-string v3, "[ReceiveDataAsync] Exception"

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 621
    const-string v2, "[ReceiveDataAsync] Exit"

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 622
    iput-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_bufData:Ljava/io/ByteArrayOutputStream;

    .line 626
    iget-boolean v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_shutdown:Z

    if-nez v0, :cond_1b

    .line 627
    :goto_a
    invoke-virtual {p0, v1}, Lcom/metamoji/ns/socket/NsCollaboSocket;->close(Z)V

    :cond_1b
    return-void

    :catchall_3
    move-exception v2

    .line 621
    const-string v3, "[ReceiveDataAsync] Exit"

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 622
    iput-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_bufData:Ljava/io/ByteArrayOutputStream;

    .line 626
    iget-boolean v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_shutdown:Z

    if-nez v0, :cond_1c

    .line 627
    invoke-virtual {p0, v1}, Lcom/metamoji/ns/socket/NsCollaboSocket;->close(Z)V

    .line 629
    :cond_1c
    throw v2
.end method

.method private synthetic lambda$onConnectingCheckTimer$0()V
    .locals 1

    const/4 v0, 0x1

    .line 691
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/socket/NsCollaboSocket;->close(Z)V

    return-void
.end method

.method private synthetic lambda$postCommand$1()V
    .locals 1

    const/4 v0, 0x1

    .line 790
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/socket/NsCollaboSocket;->close(Z)V

    return-void
.end method

.method private parseParameter(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 668
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 671
    sget-object v1, Lcom/metamoji/ns/socket/NsCollaboSocket;->s_regexKey:Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object p1

    .line 672
    array-length v1, p1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 674
    sget-object v5, Lcom/metamoji/ns/socket/NsCollaboSocket;->s_regexValue:Ljava/util/regex/Pattern;

    const/4 v6, 0x2

    invoke-virtual {v5, v4, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v4

    .line 675
    array-length v5, v4

    if-ge v5, v6, :cond_0

    .line 677
    const-string v4, "SKIP : no value..."

    invoke-static {v4}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 680
    :cond_0
    aget-object v5, v4, v2

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private resetConnectingCheckTimer()V
    .locals 7

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->mConnectingCheckTick:J

    .line 120
    iget-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_connectingCheckTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 121
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_connectingCheckTimer:Ljava/util/Timer;

    .line 122
    new-instance v2, Lcom/metamoji/ns/socket/NsCollaboSocket$1;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/socket/NsCollaboSocket$1;-><init>(Lcom/metamoji/ns/socket/NsCollaboSocket;)V

    const-wide/16 v3, 0x7530

    const-wide/16 v5, 0x7530

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method binaryDataComplatedCheck()V
    .locals 3

    .line 636
    iget v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeRequiredSize:I

    if-lez v0, :cond_0

    return-void

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeParamDic:Ljava/util/Map;

    iget-object v1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "binaryData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    iget-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeParamDic:Ljava/util/Map;

    iget-object v1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeBoothId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModePacketNo:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/ns/socket/NsCollaboSocket;->receivedData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 646
    iput v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeRequiredSize:I

    const/4 v0, 0x0

    .line 647
    iput-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeData:Ljava/io/ByteArrayOutputStream;

    .line 648
    iput-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeParamDic:Ljava/util/Map;

    .line 649
    iput-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeBoothId:Ljava/lang/String;

    .line 650
    iput-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModePacketNo:Ljava/lang/String;

    return-void
.end method

.method checkChar(BI)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method declared-synchronized close(Z)V
    .locals 4

    monitor-enter p0

    .line 343
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 344
    :try_start_1
    iget-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_connectingCheckTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 347
    iput-object v1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_connectingCheckTimer:Ljava/util/Timer;

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 352
    iput-boolean v2, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_shutdown:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 355
    :try_start_2
    instance-of v2, v0, Ljavax/net/ssl/SSLSocket;

    if-nez v2, :cond_1

    .line 356
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    .line 357
    iget-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 360
    :try_start_3
    const-string v2, "[NsCollaboSocket] failed to shutdown socket."

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 364
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_oWriterLockObject:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 365
    :try_start_4
    iget-object v2, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_oWriter:Ljava/io/BufferedOutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_2

    .line 367
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 369
    :try_start_6
    const-string v3, "[NsCollaboSocket] failed to close stream writer."

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 371
    :goto_1
    iput-object v1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_oWriter:Ljava/io/BufferedOutputStream;

    .line 373
    :cond_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 374
    :try_start_7
    iget-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_iReaderLockObject:Ljava/lang/Object;

    monitor-enter v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 375
    :try_start_8
    iget-object v2, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_iReader:Ljava/io/BufferedInputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v2, :cond_3

    .line 377
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v2

    .line 379
    :try_start_a
    const-string v3, "[NsCollaboSocket] failed to close stream reader."

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 381
    :goto_2
    iput-object v1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_iReader:Ljava/io/BufferedInputStream;

    .line 383
    :cond_3
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 385
    :try_start_b
    iget-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_socket:Ljava/net/Socket;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v0, :cond_4

    .line 387
    :try_start_c
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_3

    :catch_3
    move-exception v0

    .line 389
    :try_start_d
    const-string v2, "[NsCollaboSocket] failed to close socket."

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 391
    :goto_3
    iput-object v1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_socket:Ljava/net/Socket;

    .line 394
    :cond_4
    iput-object v1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_bufData:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    .line 395
    iput v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeRequiredSize:I

    .line 396
    iput-object v1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeData:Ljava/io/ByteArrayOutputStream;

    .line 397
    iput-object v1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeParamDic:Ljava/util/Map;

    .line 398
    iput-object v1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModeBoothId:Ljava/lang/String;

    .line 399
    iput-object v1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_binaryModePacketNo:Ljava/lang/String;

    .line 400
    iput-boolean v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_proxyConnecting:Z

    .line 401
    iput-boolean v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_withSSL:Z

    if-eqz p1, :cond_5

    .line 404
    iget-object p1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_handler:Lcom/metamoji/ns/socket/INsCollaboSocketHandler;

    if-eqz p1, :cond_5

    .line 405
    invoke-interface {p1}, Lcom/metamoji/ns/socket/INsCollaboSocketHandler;->collaboSocketClose()V

    .line 407
    :cond_5
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 408
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 383
    :try_start_e
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    throw p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :catchall_1
    move-exception p1

    .line 373
    :try_start_10
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    throw p1

    :catchall_2
    move-exception p1

    .line 407
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    throw p1

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    throw p1
.end method

.method public connect(Ljava/lang/String;IZ)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    .line 144
    const-string v4, "[MMJNsCollaboSocket] ProxyConnectCommand : ========================== End."

    const-string v5, "NsCollaboSocket"

    const-string v6, "\n\n[Proxy] %s:%d"

    const-string v7, ""

    .line 0
    const-string/jumbo v0, "\u25a0proxyList size : "

    const-string v8, "http://"

    const-string/jumbo v9, "\u25a0Target : http://"

    const/4 v10, 0x0

    .line 147
    iput-boolean v10, v1, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_proxyConnecting:Z

    .line 148
    iput-boolean v3, v1, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_withSSL:Z

    const/4 v11, 0x0

    .line 151
    iput-object v11, v1, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_connectingProxyHost:Ljava/lang/String;

    .line 152
    iput v10, v1, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_connectingProxyPort:I

    .line 155
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v12

    .line 156
    const-string v13, "CollaboProxySettingUseProxy"

    invoke-virtual {v12, v13, v10}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_0

    .line 162
    iput-boolean v14, v1, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_proxyConnecting:Z

    .line 163
    const-string v0, "CollaboProxySettingHost"

    invoke-virtual {v12, v0}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    const-string v8, "CollaboProxySettingPort"

    invoke-virtual {v12, v8, v10}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v8

    move v11, v14

    goto/16 :goto_5

    .line 169
    :cond_0
    :try_start_0
    const-string v15, "[NsCollaboSocket] ProxySelector =================== Start!"

    invoke-static {v15}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 170
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v9

    new-instance v15, Ljava/net/URI;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v15, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v15}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 172
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 173
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/metamoji/cm/CmLog;->isFileLogEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    if-eqz v0, :cond_3

    .line 177
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/net/Proxy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 179
    :try_start_1
    invoke-virtual {v9}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v9

    check-cast v9, Ljava/net/InetSocketAddress;

    if-eqz v9, :cond_2

    .line 181
    const-string v11, "-----------"

    invoke-static {v11}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 182
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Host : "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 183
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Port : "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 190
    :cond_3
    :try_start_2
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 191
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v0, :cond_4

    .line 194
    :try_start_3
    iput-boolean v14, v1, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_proxyConnecting:Z

    .line 195
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 196
    :try_start_4
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move v9, v0

    move v11, v14

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v9, p2

    goto :goto_1

    :catch_2
    move-exception v0

    move/from16 v9, p2

    move-object v8, v2

    :goto_1
    move v11, v14

    goto :goto_3

    :cond_4
    move/from16 v9, p2

    move-object v8, v2

    move v11, v10

    .line 199
    :goto_2
    :try_start_5
    const-string v0, "[NsCollaboSocket] ProxySelector ===================== End."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move/from16 v9, p2

    move-object v8, v2

    move v11, v10

    .line 202
    :goto_3
    const-string v15, "[NsCollaboSocket] ProxySelector select Failed!"

    invoke-static {v0, v15}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_4
    move-object v0, v8

    move v8, v9

    .line 207
    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v15, "[NsCollaboSocket] connect\nproxyEnable : "

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "\nconnectHost : "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v0, :cond_5

    move-object v15, v0

    goto :goto_6

    .line 209
    :cond_5
    const-string v15, "(null)"

    :goto_6
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "\nconnectPort : "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "\nwithSSL : "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "\nuseProxySetting : "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 207
    invoke-static {v9}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    if-eqz v11, :cond_6

    .line 216
    iput-object v0, v1, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_connectingProxyHost:Ljava/lang/String;

    .line 217
    iput v8, v1, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_connectingProxyPort:I

    .line 222
    :cond_6
    :try_start_6
    invoke-direct {v1}, Lcom/metamoji/ns/socket/NsCollaboSocket;->resetConnectingCheckTimer()V

    .line 225
    iput-boolean v10, v1, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_shutdown:Z

    if-eqz v3, :cond_7

    if-nez v11, :cond_7

    .line 228
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v3

    .line 229
    invoke-virtual {v3, v0, v8}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/SSLSocket;

    iput-object v3, v1, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_socket:Ljava/net/Socket;

    .line 230
    move-object v9, v3

    check-cast v9, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    goto :goto_7

    .line 232
    :cond_7
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    iput-object v3, v1, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_socket:Ljava/net/Socket;

    .line 233
    new-instance v9, Ljava/net/InetSocketAddress;

    invoke-direct {v9, v0, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 235
    :goto_7
    iget-object v3, v1, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_socket:Ljava/net/Socket;

    invoke-virtual {v3, v10}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 238
    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v9, v1, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_socket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, v1, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_oWriter:Ljava/io/BufferedOutputStream;

    .line 241
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v9, v1, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_socket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, v1, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_iReader:Ljava/io/BufferedInputStream;

    .line 243
    new-instance v3, Lcom/metamoji/ns/socket/NsCollaboSocket$2;

    const-string v9, "CollaboSocket-RecvThread"

    invoke-direct {v3, v1, v9}, Lcom/metamoji/ns/socket/NsCollaboSocket$2;-><init>(Lcom/metamoji/ns/socket/NsCollaboSocket;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v3}, Lcom/metamoji/ns/socket/NsCollaboSocket$2;->start()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v11, :cond_13

    const/4 v3, 0x2

    .line 269
    const-string v9, "%s:%s"

    const-string v15, "UTF-8"

    if-eqz v13, :cond_a

    .line 272
    const-string v0, "CollaboProxySettingRequireAuth"

    invoke-virtual {v12, v0, v10}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 273
    const-string v0, "CollaboProxySettingUserName"

    invoke-virtual {v12, v0}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtProxyAuthDriver;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    const-string v8, "CollaboProxySettingPassword"

    invoke-virtual {v12, v8}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/nt/NtProxyAuthDriver;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move-object v0, v7

    :goto_8
    if-eqz v8, :cond_9

    goto :goto_9

    :cond_9
    move-object v8, v7

    .line 275
    :goto_9
    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 277
    :try_start_7
    const-string v8, "Proxy-Authorization: %s %s\r\n"

    const-string v9, "Basic"

    invoke-virtual {v0, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v9, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_d

    .line 286
    :cond_a
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v12

    const-string v13, "MMJProxyAuthenticationInfomation"

    invoke-virtual {v12, v13}, Lcom/metamoji/nt/NtUserDefaults;->getMapValue(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    if-eqz v12, :cond_e

    .line 288
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v13, -0x1

    if-eq v8, v13, :cond_b

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_a

    :cond_b
    move-object v8, v7

    :goto_a
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_e

    .line 291
    const-string/jumbo v8, "username"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/metamoji/nt/NtProxyAuthDriver;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 292
    const-string/jumbo v12, "userpassword"

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/nt/NtProxyAuthDriver;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v8, :cond_c

    goto :goto_b

    :cond_c
    move-object v8, v7

    :goto_b
    if-eqz v0, :cond_d

    goto :goto_c

    :cond_d
    move-object v0, v7

    .line 294
    :goto_c
    filled-new-array {v8, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 296
    :try_start_8
    const-string v8, "Proxy-Authorization: Basic %s\r\n"

    invoke-virtual {v0, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_d

    :catch_5
    :cond_e
    const/4 v0, 0x0

    .line 306
    :goto_d
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v0, :cond_f

    goto :goto_e

    :cond_f
    move-object v0, v7

    :goto_e
    filled-new-array {v2, v3, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "CONNECT %s:%d HTTP/1.1\r\nHost: %s\r\n%s\r\n"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 307
    const-string v2, "[MMJNsCollaboSocket] ProxyConnectCommand : %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    :try_start_9
    iget-object v2, v1, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_oWriter:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 311
    iget-object v0, v1, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_oWriter:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 327
    invoke-static {v4}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    goto :goto_10

    :catchall_0
    move-exception v0

    .line 313
    :try_start_a
    const-string v2, "[NsCollaboSocket] ProxyConnectCommand Failed"

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v1, v10}, Lcom/metamoji/ns/socket/NsCollaboSocket;->close(Z)V

    if-eqz v11, :cond_11

    .line 319
    iget-object v2, v1, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_connectingProxyHost:Ljava/lang/String;

    if-eqz v2, :cond_10

    move-object v7, v2

    :cond_10
    iget v2, v1, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_connectingProxyPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v7, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_f

    :cond_11
    const/4 v11, 0x0

    .line 321
    :goto_f
    iget-object v2, v1, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_handler:Lcom/metamoji/ns/socket/INsCollaboSocketHandler;

    if-eqz v2, :cond_12

    const/4 v3, 0x1

    .line 322
    invoke-interface {v2, v3, v11}, Lcom/metamoji/ns/socket/INsCollaboSocketHandler;->collaboSocketConnectServerFailed(ZLjava/lang/String;)V

    .line 325
    :cond_12
    new-instance v2, Lcom/metamoji/ns/service/NsCollaboServiceException;

    const-string v3, "ProxyConnectCommand Failed."

    invoke-direct {v2, v10, v5, v3, v0}, Lcom/metamoji/ns/service/NsCollaboServiceException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v0

    .line 327
    invoke-static {v4}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 328
    throw v0

    :cond_13
    :goto_10
    return-void

    :catchall_2
    move-exception v0

    .line 251
    const-string v2, "NsCollaboSocket.connect error"

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1, v10}, Lcom/metamoji/ns/socket/NsCollaboSocket;->close(Z)V

    if-eqz v11, :cond_15

    .line 257
    iget-object v2, v1, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_connectingProxyHost:Ljava/lang/String;

    if-eqz v2, :cond_14

    move-object v7, v2

    :cond_14
    iget v2, v1, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_connectingProxyPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v7, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_11

    :cond_15
    const/4 v11, 0x0

    .line 259
    :goto_11
    iget-object v2, v1, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_handler:Lcom/metamoji/ns/socket/INsCollaboSocketHandler;

    if-eqz v2, :cond_16

    const/4 v3, 0x1

    .line 260
    invoke-interface {v2, v3, v11}, Lcom/metamoji/ns/socket/INsCollaboSocketHandler;->collaboSocketConnectServerFailed(ZLjava/lang/String;)V

    .line 263
    :cond_16
    new-instance v2, Lcom/metamoji/ns/service/NsCollaboServiceException;

    const-string v3, "cannot connect."

    invoke-direct {v2, v10, v5, v3, v0}, Lcom/metamoji/ns/service/NsCollaboServiceException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public disconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 336
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/socket/NsCollaboSocket;->close(Z)V

    return-void
.end method

.method isProxyConnectStream([B)Z
    .locals 6

    .line 990
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 995
    :try_start_0
    aget-byte v3, p1, v2

    const/16 v4, 0xd

    invoke-virtual {p0, v3, v4}, Lcom/metamoji/ns/socket/NsCollaboSocket;->checkChar(BI)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    if-ge v3, v0, :cond_0

    .line 996
    aget-byte v3, p1, v3

    const/16 v5, 0xa

    invoke-virtual {p0, v3, v5}, Lcom/metamoji/ns/socket/NsCollaboSocket;->checkChar(BI)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x2

    if-ge v3, v0, :cond_0

    .line 997
    aget-byte v3, p1, v3

    invoke-virtual {p0, v3, v4}, Lcom/metamoji/ns/socket/NsCollaboSocket;->checkChar(BI)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x3

    if-ge v3, v0, :cond_0

    .line 998
    aget-byte v3, p1, v3

    invoke-virtual {p0, v3, v5}, Lcom/metamoji/ns/socket/NsCollaboSocket;->checkChar(BI)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return v1
.end method

.method onConnectingCheckTimer()V
    .locals 2

    const/16 v0, 0x1e

    .line 689
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[NsCollaboSocket] no response from a server during %d. "

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 690
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/socket/NsCollaboSocket$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/socket/NsCollaboSocket$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ns/socket/NsCollaboSocket;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method postCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 715
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommand(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method postCommand(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 722
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommand(Ljava/lang/String;Ljava/lang/String;[BZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method postCommand(Ljava/lang/String;Ljava/lang/String;[BZ)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 725
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommand(Ljava/lang/String;Ljava/lang/String;[BZLcom/metamoji/ns/socket/INsCollaboSocketPacketNoCallback;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method postCommand(Ljava/lang/String;Ljava/lang/String;[BZLcom/metamoji/ns/socket/INsCollaboSocketPacketNoCallback;)Ljava/lang/String;
    .locals 5

    .line 732
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 737
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_proxyConnecting:Z

    if-eqz v0, :cond_1

    .line 738
    :catch_0
    :goto_0
    iget-boolean v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_proxyConnecting:Z

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x64

    .line 740
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 746
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_sendStopFlag:Z

    if-eqz v0, :cond_2

    if-eqz p4, :cond_3

    :cond_2
    iget-object p4, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_oWriter:Ljava/io/BufferedOutputStream;

    if-nez p4, :cond_4

    .line 749
    :cond_3
    const-string p1, "[MMJNsCollaboSocket] write canceld..."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    return-object v1

    .line 757
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/ns/socket/NsCollaboSocket;->sendPacketNo()Ljava/lang/String;

    move-result-object p4

    if-eqz p5, :cond_5

    .line 760
    invoke-interface {p5, p4}, Lcom/metamoji/ns/socket/INsCollaboSocketPacketNoCallback;->action(Ljava/lang/String;)V

    .line 762
    :cond_5
    const-string p5, "\n%s\t%s\t%s"

    filled-new-array {p1, p4, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 765
    iget-object p2, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_handler:Lcom/metamoji/ns/socket/INsCollaboSocketHandler;

    if-eqz p2, :cond_6

    const/4 p5, 0x1

    .line 766
    invoke-interface {p2, p5}, Lcom/metamoji/ns/socket/INsCollaboSocketHandler;->collaboSocketSendingData(Z)V

    :cond_6
    const/4 p2, 0x0

    .line 769
    :try_start_1
    iget-object p5, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_oWriterLockObject:Ljava/lang/Object;

    monitor-enter p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 770
    :try_start_2
    iget-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_oWriter:Ljava/io/BufferedOutputStream;

    if-nez v0, :cond_8

    .line 772
    const-string p1, "[MMJNsCollaboSocket] write canceld..."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 773
    monitor-exit p5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 794
    iget-object p1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_handler:Lcom/metamoji/ns/socket/INsCollaboSocketHandler;

    if-eqz p1, :cond_7

    .line 795
    invoke-interface {p1, p2}, Lcom/metamoji/ns/socket/INsCollaboSocketHandler;->collaboSocketSendingData(Z)V

    :cond_7
    return-object v1

    .line 777
    :cond_8
    :try_start_3
    const-string v0, "[MMJNsCollaboSocket] PostCommand : %s\nend : %s\nsize : %d"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12c

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0xa

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 778
    iget-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_oWriter:Ljava/io/BufferedOutputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    if-eqz p3, :cond_9

    .line 781
    iget-object p1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_oWriter:Ljava/io/BufferedOutputStream;

    invoke-virtual {p1, p3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 784
    :cond_9
    iget-object p1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_oWriter:Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 785
    monitor-exit p5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 794
    iget-object p1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_handler:Lcom/metamoji/ns/socket/INsCollaboSocketHandler;

    if-eqz p1, :cond_a

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 785
    :try_start_4
    monitor-exit p5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 787
    :try_start_6
    const-string p3, "[NsCollaboSocket] postCommand Failed"

    invoke-static {p1, p3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 789
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p3, Lcom/metamoji/ns/socket/NsCollaboSocket$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/metamoji/ns/socket/NsCollaboSocket$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ns/socket/NsCollaboSocket;)V

    invoke-virtual {p1, p3, v1, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 794
    iget-object p1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_handler:Lcom/metamoji/ns/socket/INsCollaboSocketHandler;

    if-eqz p1, :cond_a

    .line 795
    :goto_1
    invoke-interface {p1, p2}, Lcom/metamoji/ns/socket/INsCollaboSocketHandler;->collaboSocketSendingData(Z)V

    :cond_a
    return-object p4

    :catchall_2
    move-exception p1

    .line 794
    iget-object p3, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_handler:Lcom/metamoji/ns/socket/INsCollaboSocketHandler;

    if-eqz p3, :cond_b

    .line 795
    invoke-interface {p3, p2}, Lcom/metamoji/ns/socket/INsCollaboSocketHandler;->collaboSocketSendingData(Z)V

    .line 797
    :cond_b
    throw p1
.end method

.method public postCommandAddNotifyBoothUpdated(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 893
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 894
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 895
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 898
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s=%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 901
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 905
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "cmd:AddNotifyBoothUpdated bidseq:%s\n"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 906
    const-string v0, "*"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public postCommandAttachBooth(Ljava/lang/String;JLcom/metamoji/ns/socket/INsCollaboSocketPacketNoCallback;)Ljava/lang/String;
    .locals 6

    .line 871
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cmd:AttachBooth bid:%s last:%d\n"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 872
    const-string v1, "*"

    move-object v0, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommand(Ljava/lang/String;Ljava/lang/String;[BZLcom/metamoji/ns/socket/INsCollaboSocketPacketNoCallback;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public postCommandChangeMembersMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 940
    const-string v0, "cmd:ChangeMembersMode userID:%s key:%s value:%s\n"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 941
    const-string p2, "*"

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public postCommandChangeMembersProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 953
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 957
    :cond_0
    const-string v0, "cmd:ChangeMembersProperty userID:%s key:%s value:%s\n"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 955
    :cond_1
    :goto_0
    const-string p1, "cmd:ChangeMembersProperty key:%s value:%s\n"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 959
    :goto_1
    const-string p2, "*"

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public postCommandChangeMode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 917
    const-string v0, "cmd:ChangeMode key:%s value:%s\n"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 918
    const-string p2, "*"

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public postCommandChangeMode2(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 978
    const-string v0, "cmd:ChangeMode2 %s\n"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 979
    const-string v0, "*"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public postCommandChangeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 929
    const-string v0, "cmd:ChangeProperty key:%s value:%s\n"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 930
    const-string p2, "*"

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public postCommandDetachBooth(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 882
    const-string v0, "cmd:DetachBooth bid:%s\n"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 883
    const-string v0, "*"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public postCommandDirection(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 841
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p3, p4, p5, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "cmd:PostData loop:%d save:%d rsize:%s a: data:%s z:\n"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 842
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public postCommandDirectionBinary([BLjava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 857
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    array-length v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p3, p4, p5, v0}, [Ljava/lang/Object;

    move-result-object p3

    const-string p4, "cmd:PostData loop:%d save:%d rsize:%s binary:%d\n"

    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 858
    invoke-virtual {p0, p2, p3, p1}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommand(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public postCommandLoginWithRoomId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 811
    const-string v0, "cmd:LoginRoom rid:%s did:%s sid:%s name:%s\n"

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 812
    const-string p2, "*"

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public postCommandLogoutWithRoomId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 823
    iput-boolean v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_sendStopFlag:Z

    .line 825
    const-string v1, "cmd:LogoutRoom rid:%s\n"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 826
    const-string v1, "*"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommand(Ljava/lang/String;Ljava/lang/String;[BZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public postCommandPingResult()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 968
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "cmd:PingResult\n"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 969
    const-string v1, "*"

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method receivedData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_handler:Lcom/metamoji/ns/socket/INsCollaboSocketHandler;

    if-nez v0, :cond_0

    return-void

    .line 661
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_targetDriveId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_targetDocId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/metamoji/ns/socket/INsCollaboSocketHandler;->collaboSocketReceivedData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method sendPacketNo()Ljava/lang/String;
    .locals 6

    .line 706
    sget-object v0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 707
    :try_start_0
    const-string v1, "C%d"

    sget-wide v2, Lcom/metamoji/ns/socket/NsCollaboSocket;->s_sendPacketNo:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/metamoji/ns/socket/NsCollaboSocket;->s_sendPacketNo:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 708
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setHandler(Lcom/metamoji/ns/socket/INsCollaboSocketHandler;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket;->m_handler:Lcom/metamoji/ns/socket/INsCollaboSocketHandler;

    return-void
.end method
