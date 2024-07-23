gen_auth: gen_clean
	@echo generating files from .proto 
	protoc -I ./proto/auth --go_out=gen/auth --go_opt=paths=source_relative --go-grpc_out=gen/auth --go-grpc_opt=paths=source_relative ./proto/auth/auth.proto

gen_clean:
	@echo deleting generated auth pb.go files
	rm -r gen/auth/*
